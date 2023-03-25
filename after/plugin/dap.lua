-- For debug adapter
local dap = require('dap')

dap.adapters.lldb = {
    type = "executable",
    command = "/usr/local/Cellar/llvm/15.0.7_1/bin/lldb-vscode", -- adjust as needed
    name = "lldb",
}

-- Debug Configuration
dap.configurations.cpp = {
  {
    name = "Launch file debug",
    -- Which adapter to use
    type = "lldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
  },
  {
      name = 'Attach to gdbserver :1234',
      type = "lldb",
      request = 'attach',
      pid = require('dap.utils').pick_process,
      cwd = '${workspaceFolder}',
      program = function()
          return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
      end,
  },
}


