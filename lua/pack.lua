-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim");

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Language Parser [Enables better syntax highlighting]
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    -- Autocomplete tags in markup languages (eg. html)
    use("windwp/nvim-ts-autotag");

    -- Collection of packages for LSP setup
    -- lsp-zero is used for LSP configurations
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Config Support
            {'neovim/nvim-lspconfig'},             -- Required
            
            -- Manage Language Server Installations
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }

    -- Autocomplete pairs i.e ( ), { }, 
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup() end
    }

    -- Indentation indicators
    use("lukas-reineke/indent-blankline.nvim");

    -- Debugging
    use("mfussenegger/nvim-dap");

    -- Debug ui for dap
    use("rcarriga/nvim-dap-ui");

    -- Colorscheme
    use("navarasu/onedark.nvim");

    -- Custon nvim status bar
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Git integration
    use("tpope/vim-fugitive");

    -- Extra icons for other plugins to utilize
    use("nvim-tree/nvim-web-devicons");

    -- Show File Hierarchy
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        },
    }

    -- Show lines changed in buffers for git
    use("airblade/vim-gitgutter");

end)
