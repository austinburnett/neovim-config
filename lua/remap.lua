-- Leader key is spacebar
vim.g.mapleader = " "

-- Copy from clipboard
vim.keymap.set("n", "<leader>y", "\"*y")

-- Paste from clipboard
vim.keymap.set("n", "<leader>p", "\"*p")

-- Paste from Neovim clipboard when highlighting
-- and retain pasted text in clipboard instead of replaced text.
vim.keymap.set("v", "<leader>p", "\"_dP")

-- Keep cursor centered on page when searching
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

-- Navigating window splits
vim.keymap.set("n", "<C-h>", ":wincmd h<cr>", {
    silent = true
})
vim.keymap.set("n", "<C-j>", ":wincmd j<cr>", {
    silent = true
})
vim.keymap.set("n", "<C-k>", ":wincmd k<cr>", {
    silent = true
})
vim.keymap.set("n", "<C-l>", ":wincmd l<cr>", {
    silent = true
})

-- Maps ` to show file hierarchy
vim.keymap.set("n", "`", ":NeoTreeFocusToggle <cr>")

-- Debuging via dap
-- Found at: https://www.nerdfonts.com/cheat-sheet and at: https://github.com/microsoft/vscode-icons
-- https://www.figma.com/file/h0NdIjcCND8F0qpVBs5ewl/Visual-Studio-Code-Icons-(Community)?node-id=0-1&t=pjrBOdMQZL1o1qPm-0
vim.fn.sign_define('DapBreakpoint', {text='🛑', texthl='', linehl='', numhl=''})
--vim.fn.sign_define('DapStopped',{ text ='', texthl ='', linehl='Search', numhl =''})
vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
vim.keymap.set('n', '<F9>', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
vim.keymap.set('n', '<Leader>b', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>B', function() require('dap').set_breakpoint() end)
vim.keymap.set('n', '<Leader>lp', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end)
vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end)
vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
    require('dap.ui.widgets').hover()
end)
vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
    require('dap.ui.widgets').preview()
end)
vim.keymap.set('n', '<Leader>df', function()
    local widgets = require('dap.ui.widgets')
    widgets.centered_float(widgets.frames)
end)
vim.keymap.set('n', '<Leader>ds', function()
    local widgets = require('dap.ui.widgets')
    widgets.centered_float(widgets.scopes)
end)
