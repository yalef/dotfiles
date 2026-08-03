return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    opts = {
        auto_install = true,
        indent = { enable = true },
        highlight = { enable = true },
    },
    lazy = false,
    config = function ()
        local ts = require("nvim-treesitter")
        local languages = {"python", "go", "lua", "markdown"}

        ts.install(languages)

        vim.api.nvim_create_autocmd("FileType", {
            pattern = languages,
            callback = function()
                pcall(vim.treesitter.start)
            end,
        })
    end
}

