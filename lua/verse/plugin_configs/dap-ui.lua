local M = {}

function M.load()
  local dap, dapui = require'dap', require'dapui'
 
  dapui.setup {
    layouts = {
      {
        elements = {
          "scopes",
          "breakpoints",
        },
        size = 0.15,
        position = "right",
      },

      {
        elements = {
          "repl"
        },
        size = 0.2,
        position = "bottom",
      },
    },
  }

  dap.listeners.after.event_initialized["dap_config"] = function()
    dapui.open()
  end
  dap.listeners.after.event_terminated["dap_config"] = function()
    dapui.close()
  end
  dap.listeners.after.event_exited["dap_config"] = function()
    dapui.close()
  end
end

return M
