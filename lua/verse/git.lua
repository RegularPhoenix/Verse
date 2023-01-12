local M = {}

-- TODO: Rewrite
local function execute_git(opts)
  local plenary_loaded, plenary_job = pcall(require, "plenary.job")
  if not plenary_loaded then
    return 1, { "" }
  end

  opts = opts or {}

  local stderr = {}
  local stdout, ret = plenary_job:new({
    command = "git",
    args = opts.args,
    cwd = vim.fn.stdpath "config",
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


function M.check_for_updates(args)
  local silent = args.silent or false
  local force = args.force or false

  execute_git { args = { "remote", "update" } }

  local _, localc = execute_git { args = { "rev-parse", "@" } }
  local _, remotec = execute_git { args = { "rev-parse", "@{u}" } }
  local _, basec = execute_git { args = { "merge-base", "@", "@{u}" } }

  if localc[1] == remotec[1] then
    if not silent then vim.notify("You already have the last version of Verse", vim.log.levels.INFO) end
    return 0
  elseif localc[1] == basec[1] then
    if not silent then vim.notify("Update available!", vim.log.levels.INFO) end
  elseif remotec[1] == basec[1] then
    if not silent then vim.notify("Unpushed commits detected. Push them or perform a reset in " .. vim.fn.stdpath "config", vim.log.levels.INFO) end
    if not force then return 0 end
  else
    if not silent then vim.notify("Paths diverged. Manual conflict resolution may be required.", vim.log.levels.WARN) end
    if not force then return 0 end
  end

  return 1
end


function M.update_verse(args)
  local silent = args.silent or true
  local force = args.force or false

  vim.notify("Checking for updates...")

  if not safe_deep_fetch() then
    return
  end
  
  if M.check_for_updates { silent = silent, force = force } == 0 then return end

  local git_result

  git_result = execute_git { args = { "merge", "--ff-only", "--progress" } }
  if ret ~= 0 then
    vim.notify("Update failed! Please pull the changes manually in " .. vim.fn.stdpath "config", vim.log.levels.ERROR)
    return
  end

  vim.schedule(function()
      if package.loaded["nvim-treesitter"] then
        vim.cmd [[ TSUpdateSync ]]
      end
  end)

  vim.notify("Verse updated successfully!\nPlease restart neovim to apply the update.", vim.log.levels.INFO)
end


local function get_latest_verse_tag()
  local _, results = execute_git { args = { "describe", "--tags", "--abbrev=0" } }
  return vim.F.if_nil(results[1], "")
end


local function get_base_verse_tag()
  local _, results = execute_git { args = { "describe", "--abbrev=0" } }
  return vim.F.if_nil(results[1], "")
end


local function get_version_commit_count()
  local _, last_tag_commit = execute_git { args = { "rev-list", "-n", "1", get_latest_verse_tag() } }
  local _, total = execute_git { args = { "rev-list", "--count", "--all" } }
  local _, up_to_last_tag = execute_git { args = { "rev-list", "--count", last_tag_commit[1] } }
  return total[1] - up_to_last_tag[1]
end

local release_names_table = {
  ['0.1'] = "Apex",
  ['0.2'] = "Mimic",
  ['0.3'] = "Snowglobe",
  ['0.4'] = "Kaspar",
}

function M.get_verse_release_name()
  local base_tag = get_base_verse_tag()
  return release_names_table[base_tag]
end


function M.get_verse_full_release_name()
  local full_tag = get_latest_verse_tag()
  local name = M.get_verse_release_name()
  local commit_count = get_version_commit_count()
  local _, count = string.gsub(full_tag, "%.", "")

  if count == 1 then
    return "Verse " .. full_tag .. ".0." .. commit_count .. " -- " .. name
  else
    return "Verse " .. full_tag .. "." .. commit_count .. " -- " .. name
  end
end

return M
