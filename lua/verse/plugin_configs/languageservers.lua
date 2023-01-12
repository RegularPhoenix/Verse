local M = {}

local override_attach = function(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  local opts = { noremap = true, silent = true, buffer = bufnr }
  local vks = vim.keymap.set
  vks('n', 'gD', vim.lsp.buf.definition, opts)
  vks('n', 'gd', vim.lsp.buf.declaration, opts)
  vks('n', 'r', vim.lsp.buf.rename, opts)
end



function M.load_lsp()
  if require("verse.misc_helper").user_config_exists() then
    local language_servers = require"user_config".lsp
    for _, server in pairs(language_servers) do
      require('lspconfig')[server].setup { on_attach = override_attach }
    end
  end
end

function M.load_dap()
  if require("verse.misc_helper").user_config_exists() then
    require"user_config".dap(require'dap')
  end
end

return M
