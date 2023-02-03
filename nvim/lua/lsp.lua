-- LSP configuration
-- general on_attach func
local on_attach = function(client, bufnr)
    local map = vim.keymap.set
    local default_opts = {noremap = true, silent = true}
    map("n", "gd", vim.lsp.buf.definition, default_opts)
    map("n", "<space>rn", vim.lsp.buf.rename, default_opts)
    map("n", "[d", vim.diagnostic.goto_prev, default_opts)
    map("n", "]d", vim.diagnostic.goto_next, default_opts)
end

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#pyright
require("lspconfig")["pyright"].setup({
    on_attach=on_attach,
    settings = {
        python = {
            analysis = {
                autoImportCompletions = false,
                autoSearchPaths = false,
                diagnosticMode = "openFilesOnly",
                typeCheckingMode = "basic",
                useLibraryCodeForTypes = true,
            }
        }
    }
})
