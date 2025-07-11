return {
    'saghen/blink.cmp',
    -- optional: provides snippets for the snippet source
    dependencies = { 'rafamadriz/friendly-snippets' },

    version = '1.*',

    opts = {
        -- See :h blink-cmp-config-keymap for defining your own keymap
        keymap = { preset = 'default' },

        appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = 'mono'
        },

        completion = { documentation = { auto_show = false } },

        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer' },
        },
        fuzzy = { implementation = "prefer_rust_with_warning" },
        signature = { enabled = true },
    }
}
