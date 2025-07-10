return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = 'master',
        lazy = false,
        build = ":TSUpdate",
        config = function()
            require'nvim-treesitter.configs'.setup {
                -- A list of parser names, or "all" (the four listed parsers should always be installed)
                ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "python", "html"},
                sync_install = false,
                auto_install = true,

                -- List of parsers to ignore installing (for "all")
                ignore_install = { },
                autotag = {
                    enable = true,
                },
                indent = {
                    enable = true
                },
                highlight = {
                    enable = true,
                    disable = { "c", "rust" },
                    additional_vim_regex_highlighting = false,
                },
            }

        end
    }
}
