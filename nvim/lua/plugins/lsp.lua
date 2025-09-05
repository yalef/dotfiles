return {
    "neovim/nvim-lspconfig",
    dependencies = {
        {
            "folke/lazydev.nvim",
            ft = "lua", -- only load on lua files
            opts = {
                library = {
                    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                },
            },
        },
        {
            "saghen/blink.cmp",
            opts = {
                keymap = { preset = "default" },
                signature = { enabled = true },
                appearance = {
                    nerd_font_variant = "mono"
                },
                sources = {
                    default = { "lsp", "path", "snippets", "buffer" },
                },
                fuzzy = { implementation = "lua" }
            },
            opts_extend = { "sources.default" }
        },
    },
    ft = {"python", "lua", "go", "c", "cpp"},
    opts = {
        servers = {
            pylsp = { plugins = { flake8 = { enabled = true } } },
            gopls = {},
            lua_ls = {},
            clangd = {},
        },
    },
    config = function(_, opts)
        local lspconfig = require("lspconfig")
        for server, config in pairs(opts.servers) do
            config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
            lspconfig[server].setup(config)
        end
   end,
}
