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
                signature = { enabled = false },
                appearance = {
                    nerd_font_variant = "mono"
                },
                sources = {
                    default = { "lsp", "path"},
                },
                fuzzy = { implementation = "lua" },
            },
            opts_extend = { "sources.default" }
        },
    },
    ft = {"python", "lua", "go", "c", "cpp"},
    opts = {
        servers = {
--            pylsp = {
--                plugins = {
--                    flake8 = { enabled = true },
--                    rope = { enabled = true },
--                    pyflakes = { enabled = true }
--                }
--            },
            pyright = {},
            gopls = {},
            lua_ls = {},
            clangd = {},
        },
    },
    config = function(_, opts)
        for server, config in pairs(opts.servers) do
            -- config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
            -- vim.lsp.config[server] = config
            vim.lsp.enable(server)
        end
   end,
}
