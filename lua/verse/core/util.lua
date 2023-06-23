local M = {}

function M.concat_paths(paths)
	local separator = vim.loop.os_uname().version:match "Windows" and "\\" or "/"
	return table.concat(paths, separator)
end

function M.option_or_default(name, default)
	local exists, option = pcall(require, "userconfig.verse")

	if exists and option[name] ~= nil then
		return option[name]
	end

	return default
end

function M.path_exists(path)
	local ok, stderr, code = os.rename(path, path)

	if ok or code == 13 then
		return true
	else
		return false
	end
end

return M
