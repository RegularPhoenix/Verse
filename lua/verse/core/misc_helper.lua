local M = {}

function M.concat_paths(paths)
	local vl = vim.loop
	local separator = vim.loop.os_uname().version:match("Windows") and "\\" or "/"
	return table.concat(paths, separator)
end

function M.user_config_exists()
	if vim.fn.empty(vim.fn.glob(M.concat_paths({ vim.fn.stdpath("config"), "lua", "user_config.lua" }))) > 0 then
		return false
	else
		return true
	end
end

return M
