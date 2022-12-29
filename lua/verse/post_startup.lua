local M = {}

function M.check_plugins()
  local plugins = require'verse.startup'.plugins
  local not_loaded = {}
  local not_loaded_count = 0

  for _,plugin in pairs(plugins) do
    if plugin["as"] ~= nil then
      name = plugin["as"]
    else
      name = plugin[1]:match "/(%S*)"
    end

    if not packer_plugins[name] or (packer_plugins[name] and not packer_plugins[name].loaded) then
      table.insert(not_loaded, name) not_loaded_count = not_loaded_count + 1
    end
  end

  return not_loaded_count, not_loaded
end

function M.load()
  count, _ = M.check_plugins()
  if count > 0 then
    vim.notify("Verse warning:\n" .. count .. " plugin(s) are not installed. Run :PackerSync to install them.", vim.log.levels.WARN)
  end
end

return M
