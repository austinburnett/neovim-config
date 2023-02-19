vim.g.mapleader = " "

vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

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
