local M = {}

local header = {
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢀⢀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⡤⡒⡜⡜⡕⡕⡕⡕⡕⣕⢲⠤⡠⠀⠀⠈⠐⢄⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠄⠃⠃⠁⠁⠁⠀⠁⠁⠁⠃⠣⢣⢣⢣⢫⢱⢱⢀⠀⠀⠑⡕⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⠀⠀⢀⢀⢠⢠⢠⠠⡀⡀⠀⠀⠀⠈⠪⡪⡪⡪⡪⡢⡀⠀⠈⢎⢪⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢰⢘⢜⢸⢨⠢⡃⡇⡣⡱⡑⡆⢄⠀⠀⠀⠣⡣⡣⡫⡪⡀⠀⠈⢜⠜⡔⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢄⢇⠕⡅⠃⠑⠈⠈⠀⠈⠈⠀⠑⠜⢜⢔⠄⠀⠀⠱⡱⡱⡱⡱⡀⠀⠡⡣⡱⣐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢜⢌⠆⠃⠀⠀⠀⡀⡀⡀⡀⠀⠀⠀⠀⠀⠡⠣⡂⠀⠀⢸⢸⢸⢸⠄⠀⠀⡕⢜⠔⡅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢨⠢⠃⠀⠀⠀⠀⠁⠀⠈⠈⠘⠩⡲⡄⠄⠀⠀⠈⠪⡀⠀⠀⡇⡇⡇⡇⠀⠀⡪⡊⡎⢜⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢜⠌⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠪⣓⢄⠀⠀⠈⡂⠀⠀⢇⢇⢇⠇⠀⠀⡪⢢⢃⢇⠅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢜⢜⠄⠀⠀⠂⠀⢀⢇⢇⢇⠃⠀⢐⠕⡅⢇⢎⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⢘⠆⠀⠀⠀⠀⡰⡱⡱⡑⠀⠀⡪⢪⠸⡨⡒⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡜⡜⠅⠀⠀⠀⡰⡱⡱⠁⠀⠀⡌⢎⢪⢊⢎⠌⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢜⢜⠌⠀⠀⢀⢔⢕⠕⠁⠀⢀⢎⢪⢊⢆⠇⡎⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢂⠀⠀⠀⠀⠀⠀⠀⠀⡀⡠⡰⡸⠘⠀⠀⢀⢔⠜⠈⠀⠀⢀⢔⢱⠡⡣⡱⡘⡜⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⢅⢄⠀⠀⠀⠈⠈⠈⠀⠀⠀⠀⠐⠈⠈⠀⠀⢀⢄⢪⠢⡣⡑⡅⢇⢪⠌⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⢍⢲⢐⢄⢄⢀⢀⢀⢀⢀⢀⢄⢄⢢⢊⢎⢢⢃⢇⢎⢪⠸⠘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠊⢆⢣⠱⡑⡅⢇⢕⢅⠇⡎⡪⢢⠣⡑⡕⡌⠆⠃⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⠁⠃⠣⠱⠘⠌⠎⠜⠐⠑⠁⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
	"⠲⣶⡆⠀⠀⠀⠀⢀⣶⡖⠀⢀⣤⣶⡾⡾⣾⣶⣦⡀⠀⠀⣶⣶⣾⣶⣶⣶⣶⣄⠀⣶⣶⣷⣶⣾⣶⣶⣷⡖⠀⣶⣶⣷⣶⣾⣶⣶⡷⠀⠲⣶⣆⠀⠀⠀⢀⣴⡖⠂",
	"⠀⢻⣿⡄⠀⠀⠀⣼⡿⠁⢀⣿⣟⠃⠁⠀⠀⠉⢻⣿⡄⠀⣀⣄⠀⠀⠀⠀⢹⣿⡇⠀⠀⠀⢺⣿⠀⠀⠀⠀⠀⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣷⣀⣰⣿⠏⠀⠀",
	"⠀⠀⢻⣿⡀⠀⣼⡿⠁⠀⢸⣿⡇⠀⠀⠀⠀⠀⢸⣿⡇⢀⣿⣷⣴⣴⣴⣴⣿⡿⠁⠀⠀⠀⣹⣿⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⢀⣽⣿⣿⡇⠀⠀ ",
	"⠀⠀⠈⢿⣷⣰⣿⠃⠀⠀⠀⢿⣿⣄⡀⠀⠀⣀⣼⣿⠃⠀⣿⣏⠉⠉⠙⣿⣧⡁⠀⠀⠀⠀⢼⣿⠀⠀⠀⠀⠀⣿⣷⠀⡀⢀⠀⢀⠀⠀⠀⣠⣾⡟⠈⠘⣿⣦⡀⠀",
	"⠀⠀⠀⠈⡿⠟⠇⠀⠀⠀⠀⠈⠙⠿⢿⢿⢿⠟⠟⠂⠀⠀⠿⠧⠀⠀⠀⠈⠿⠷⠄⠀⠀⠀⠺⢿⠀⠀⠀⠀⠀⠿⠿⠿⠿⠿⠿⠿⡟⠀⠴⢿⠃⠀⠀⠀⠈⠻⠷⢄",
}

function M.opts()
	local db = require("alpha.themes.dashboard")
	local section = db.section
	local config = db.config
	local fortune = require("alpha.fortune")

	if require("verse.core.util").option_or_default("fortune", true) then
		config.layout = {
			{ type = "padding", val = 2 },
			section.header,
			{ type = "padding", val = 2 },
			section.buttons,
			{
				type = "text",
				val = fortune,
				opts = {
					position = "center",
					hl = "Comment",
					hl_shortcut = "Comment",
				},
			}
		}
	else
		config.layout = {
			{ type = "padding", val = 3 },
			section.header,
			{ type = "padding", val = 2 },
			section.buttons,
			{ type = "padding", val = 1 },
			section.footer
		}
	end

	section.header.val = header
	section.buttons.val = {
		db.button("SPACE F F", "  Browse files", ":Telescope find_files <CR>"),
		db.button("SPACE F N", "  New file", ":enew <CR>"),
		db.button("SPACE F O", "󰦖  Recent files", ":Telescope oldfiles <CR>"),
		db.button("SPACE R L", "󰑥  Restore latest session", ":lua require(\"persistence\").load({ last = true }) <CR>"),
		db.button("SPACE M L", "󰒲  \"Lazy.nvim\" plugin manager", ":Lazy <CR>"),
		db.button("SPACE M P", "  \"Mason\" tool manager", ":Mason <CR>"),
		db.button("SPACE Q Q", "  Terminate current session", ":qa! <CR>"),
	}
	return db
end

function M.load(_, dashboard)
	require("alpha").setup(dashboard.opts)

	vim.api.nvim_create_autocmd("User", {
		pattern = "LazyVimStarted",
		callback = function()
			local ver = vim.fn.api_info().version
			dashboard.section.footer.val = {
				"Neovim "
					.. ver.major
					.. "."
					.. ver.minor
					.. "."
					.. ver.patch
					.. " | "
					.. require("verse.core.git").get_verse_full_release_name(),
			}
			pcall(vim.cmd.AlphaRedraw)
		end
	})
end

return M
