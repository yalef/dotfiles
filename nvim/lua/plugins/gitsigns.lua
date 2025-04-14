return {
    "lewis6991/gitsigns.nvim",
    opts = {
        on_attach = function ()
            local gitsigns = require("gitsigns")
            vim.keymap.set("n", "<leader>gb", gitsigns.toggle_current_line_blame, {desc = "Toggle blame"})
            vim.keymap.set("n", "<leader>gd", gitsigns.diffthis, {desc = "Display diff of current buffer"})
        end,
    },
}

