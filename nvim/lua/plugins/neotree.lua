return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
    },
    lazy = false,
    config = function ()
        vim.keymap.set("n", "<leader>t", "<cmd>Neotree toggle reveal_force_cwd=true<cr>", { desc = "Open file tree" })
    end
}
