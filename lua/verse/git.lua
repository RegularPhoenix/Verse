local M = {}

-- TODO: Rewrite
local function execute_git(opts)
  local plenary_loaded, plenary_job = pcall(require, "plenary.job")
  if not plenary_loaded then
    return 1, { "" }
  end

  opts = opts or {}
  opts.cwd = opts.cwd or vim.fn.stdpath "config"

  local stderr = {}
  local stdout, ret = plenary_job:new({
    command = "git",
    args = opts.args,
    cwd = opts.cwd,
    on_stderr = function(_, data)
      table.insert(stderr, data)
    end,
  }):sync()

  return ret, stdout, stderr
end


local function safe_deep_fetch()
  local ret, result, error = execute_git { args = { "rev-parse", "--is-shallow-repository" } }
  if ret ~= 0 then
    print(error(vim.inspect(error)))
    return
  end

  -- git fetch --unshallow will cause an error on a complete clone
  local fetch_mode = result[1] == "true" and "--unshallow" or "--all"
  ret = execute_git { args = { "fetch", fetch_mode } }
  if ret ~= 0 then
    print(error(fmt "Git fetch %s failed! Please pull the changes manually in %s", fetch_mode, vim.fn.stdpath "config"))
    return
  end

  if fetch_mode == "--unshallow" then
    ret = execute_git { args = { "remote", "set-branches", "origin", "*" } }
    if ret ~= 0 then
      print(error(fmt "Git fetch %s failed! Please pull the changes manually in %s", fetch_mode, vim.fn.stdpath "config"))
      return
    end
  end
  return true
end


function M.update_verse()
  print "Checking for updates..."

  if not safe_deep_fetch() then
    return
  end

  local ret

  ret = execute_git { args = { "diff", "--quiet", "@{upstream}" } }
  if ret == 0 then
    print "You already have the last version of Verse"
    return
  end

  ret = execute_git { args = { "merge", "--ff-only", "--progress" } }
  if ret ~= 0 then
    print("Update failed! Please pull the changes manually in " .. vim.fn.stdpath "config")
    return
  end

  vim.schedule(function()
      if package.loaded["nvim-treesitter"] then
        vim.cmd [[ TSUpdateSync ]]
      end 
  end)

  vim.notify("Verse updated successfully!", vim.log.levels.INFO)
end

return M