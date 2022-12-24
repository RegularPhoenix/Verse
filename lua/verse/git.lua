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


local function get_latest_verse_tag()
  local args = { "describe", "--tags", "--abbrev=0" }

  local _, results = execute_git { args = args }
  local tag = vim.F.if_nil(results[1], "")
  return tag
end


local function get_base_verse_tag()
  local args = { "describe", "--abbrev=0" }

  local _, results = execute_git { args = args }
  local tag = vim.F.if_nil(results[1], "")
  return tag
end


local release_names_table = {
  ['0.1'] = "Apex",
  ['0.2'] = "Mimic",
  ['0.3'] = "Snowglobe",
}

local function get_verse_release_name()
  local base_tag = get_base_verse_tag()
  return release_names_table[base_tag]
end


function M.get_verse_full_release_name()
  local full_tag = get_latest_verse_tag()
  local name = get_verse_release_name()
  local _, count = string.gsub(full_tag, "%.", "")

  if count ~= 3 then
    return "Verse " .. full_tag .. string.rep(".0", 3 - count) .. " -- " .. name
  else
    return "Verse " .. full_tag .. " -- " .. name
  end
end

return M
