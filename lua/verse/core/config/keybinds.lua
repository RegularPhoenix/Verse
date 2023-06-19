local exists, wk = pcall(require, "which-key")

if not exists then
	return 1
end

wk.register({
	["<F1>"] = {
		function()
			vim.cmd("silent only")
			vim.cmd("Alpha")
		end,
		"Open the dashboard in fullscreen",
	},
	["<F2>"] = { "<cmd>NvimTreeToggle<cr>", "Toggle file tree" },
	["<F3>"] = { "<cmd>Telescope buffers<cr>", "Open buffer" },

	-- Git
	["<leader>g"] = {
		name = "Git",
		b = { "<cmd>Gitsigns toggle_current_line_blame<cr>", "Toggle git line blame" },
		d = { "<cmd>Gitsigns diffthis<cr>", "View git diff" },
		c = { "<cmd>Telescope git_commits<cr>", "View git commits" },
		s = { "<cmd>Telescope git_status<cr>", "View git status" },
	},

	-- Files
	["<leader>f"] = {
		name = "Files",
		n = { "<cmd>enew<cr>", "Create a new file" },
		o = { "<cmd>Telescope oldfiles<cr>", "Open recent file" },
		f = { "<cmd>Telescope find_files<cr>", "Find file" },
	},

	-- Window management
	["<C-H>"] = { "<C-w>h", "Move to the left window" },
	["<C-J>"] = { "<C-w>j", "Move to the lower window" },
	["<C-K>"] = { "<C-w>k", "Move to the higher window" },
	["<C-L>"] = { "<C-w>l", "Move to the right window" },
	["<C-Q>"] = { "<C-w>q", "Quit current window" },
	["<C-Up>"] = { "<cmd>resize -2<cr>", "" },
	["<C-Down>"] = { "<cmd>resize +2<cr>", "" },
	["<C-Left>"] = { "<cmd>vertical resize -2<cr>", "" },
	["<C-Right>"] = { "<cmd>vertical resize +2<cr>", "" },

	-- Force
	["<C-S>"] = { "<cmd>w!<cr>", "Force write" },
	["<leader>qq"] = { "<cmd>qa!<cr>", "Force exit" },

	-- Tabs
	["<leader>l"] = { "<cmd>BufferLineCycleNext<cr>", "Switch to the next buffer" },
	["<leader>h"] = { "<cmd>BufferLineCyclePrev<cr>", "Switch to the previous buffer" },
	["<leader>c"] = { "<cmd>BufferLineCloseLeft<cr>", "Close current buffer" },
	["<leader>>"] = { "<cmd>BufferLineMoveNext<cr>", "Move current buffer to the right" },
	["<leader><"] = { "<cmd>BufferLineMovePrev<cr>", "Move current buffer to the left" },
	["<leader>pp"] = { "<cmd>BufferLinePick<cr>", "Pick the buffer" },
	["<leader>pn"] = { "<cmd>BufferLineTogglePin<cr>", "Pin the buffer" },

	-- Other
	["<Esc>"] = { "<cmd>noh<cr><esc>", "Escape & clear highlight" },
	["<leader>tw"] = { "<cmd>Twilight<cr>", "Toggle Twilight" },
	["<leader>tp"] = { "<cmd>TransparentToggle<cr>", "Toggle transparency" },
	["<leader>tc"] = { "<cmd>Telescope colorscheme<cr>", "Change colorscheme" },
	["<leader>td"] = { "<cmd>TodoTelescope<cr>", "Search TODO's" },
	["<leader>mp"] = { "<cmd>Mason<cr>", "Open protocol package manager (Mason)" },
	["<leader>ml"] = { "<cmd>Lazy<cr>", "Open plugin manager (Lazy.nvim)" },
	["<leader>sh"] = { "<cmd>Telescope search_history<cr>", "View search history" },

	["<C-A>"] = { "ggVG", "Select all" },
	["<M-Up>"] = { "ddkkp", "Move line up" },
	["<M-Down>"] = { "ddp", "Move line down" },

	-- LSP
	["<leader>a"] = {
		name = "LSP",
		q = { [[<Plug>(coc-fix-current)]], "Apply quick fix" },
		-- d, definition
		-- D, declaration
		-- I, implementation
		-- r, references
		i = { "<cmd>LspInfo<cr>", "LSP Info" },
		k = { "<cmd>lua _G.show_docs()<CR>", "Open documentation" },
		n = { [[<Plug>(coc-rename)]], "Rename" },
		f = { [[<Plug>(coc-format-selected)]], "Format selected code" },
	},
})

wk.register({
	["<CR>"] = {
		[[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]],
		"Coc select completion",
	},
}, { mode = "i", expr = true })

-- Debug
local dap_exists, dap = pcall(require, "dap")
if dap_exists then
	wk.register({
		["<F5>"] = {
			function()
				dap.continue()
			end,
			"Start debug",
		},
		["<F9>"] = {
			function()
				dap.toggle_breakpoint()
			end,
			"Toggle breakpoint",
		},
		["<F10>"] = {
			function()
				dap.step_over()
			end,
			"Step over",
		},
		["<F22>"] = {
			function()
				dap.step_into()
			end,
			"Step into",
		},
	})
end

local dapui_exists, dapui = pcall(require, "dapui")
if dapui_exists then
	wk.register({
		["<F17>"] = {
			function()
				dapui.toggle()
			end,
			"Toggle DAP UI",
		},
	})
end
