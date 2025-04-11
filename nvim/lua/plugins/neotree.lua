return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        -- "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    lazy = false,
    config = function ()
        vim.keymap.set("n", "<leader>t", "<cmd>Neotree toggle<cr>", { desc = "Open file tree" })
    end
}
