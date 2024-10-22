local dap = require('dap')

-- Lldb debug adapter
dap.adapters.lldb = {
    type = "executable",
    --command = "/usr/local/Cellar/llvm/15.0.7_1/bin/lldb-vscode", -- adjust as needed
    command = "lldb", -- adjust as needed
    name = "lldb",
}

-- Codelldb debug adapter
dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
    -- CHANGE THIS to your path!
    command = vim.fn.stdpath("data") .. "/mason/bin/codelldb",
    args = {"--port", "${port}"},

    -- On windows you may have to uncomment this:
    -- detached = false,
  }
}

-- Debug configuration for cpp
dap.configurations.cpp = {
  {
    name = "Launch file for debugging",
    type = "codelldb", -- Which adapter to use
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
  },
  {
      name = "Attach to codelldb server",
      type = "codelldb",
      request = 'attach',
      pid = require('dap.utils').pick_process,
      cwd = '${workspaceFolder}',
      program = function()
          return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
      end,
  },
}
