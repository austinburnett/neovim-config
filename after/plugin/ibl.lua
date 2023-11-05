-- Visual indentation indicator lines
-- Only setup if filetypes are: cpp, js, html
--
-- To create filetype specific settings go:
-- https://neovim.io/doc/user/filetype.html
--
-- Vim autocommands execute on event {"event"}
-- https://neovim.io/doc/user/lua-guide.html

vim.api.nvim_create_autocmd({"BufEnter"}, {
    pattern = {"*.lua", "*.cpp"},
    callback = function() require('ibl').setup() end
})
