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
    },
    ft = {"python", "lua", "go", "c", "cpp"},
    opts = {
        servers = {
            pyright = {},
            gopls = {},
            lua_ls = {},
            clangd = {},
        },
    },
    config = function(_, opts)
        for server, _ in pairs(opts.servers) do
            vim.lsp.enable(server)
        end
   end,
}
