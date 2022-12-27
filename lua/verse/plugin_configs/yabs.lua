local M = {}

function M.load()
  require('yabs'):setup({
    languages = {
      python = {
        tasks = {
          run = {
            command = 'python3 %',
            output = 'buffer',
          },
        },
      },
    },
    tasks = {
      run = {
        command = "echo 'Running...'",
      },
    },
    opts = {
      output_types = {
        quickfix = {
          open_on_run = 'always',
        },
      },
    },
  })
end

return M
