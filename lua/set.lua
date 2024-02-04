vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.wrap = false

vim.opt.tabstop = 8
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

if(vim.filetype.match({filename = "*.js"})) then
  vim.opt.softtabstop = 2
  vim.opt.shiftwidth = 2
end

vim.opt.autoindent = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
