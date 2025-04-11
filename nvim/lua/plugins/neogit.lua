return {
    "NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "sindrets/diffview.nvim",
        "nvim-telescope/telescope.nvim",
    },
    config = function (_, opts)
        local neogit = require('neogit')
        vim.keymap.set(
            'n',
            '<leader>gg',
            function () neogit.open( {kind = 'floating'} ) end,
            { desc = 'Open NeoGit' }
        )
        return opts
    end
}
