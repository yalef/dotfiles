vim.cmd("packadd packer.nvim")

require("packer").startup(function(use)
    -- Package manager
    use("wbthomason/packer.nvim")
   
    -- UI
    use("folke/tokyonight.nvim")
    use(
        {
	        "nvim-lualine/lualine.nvim",
	        requires = { "kyazdani42/nvim-web-devicons", opt = true },
        }
    )
    use("lukas-reineke/indent-blankline.nvim")

    -- Formatting
    use("numToStr/Comment.nvim")
    use("kylechui/nvim-surround")

    -- LSP
    use("neovim/nvim-lspconfig")

    -- Search
    use(
        {
            "nvim-telescope/telescope.nvim",
            branch = "0.1.x",
            requires = { "nvim-lua/plenary.nvim" },
        }
    )
end)

-- Plugins configuration
require("tokyonight").setup()
require("indent_blankline").setup()

require("lualine").setup {
    options = {
        icons_enabled = false,
        theme = "tokyonight",
        component_separators = { left = "", right = ""},
        section_separators = { left = "", right = ""},
        disabled_filetypes = {},
        always_divide_middle = true,
        globalstatus = false,
    },
    sections = {
        lualine_a = {"mode"},
        lualine_b = {"branch"},
        lualine_c = {"filename"},
        lualine_x = {"filetype"},
        lualine_y = {"progress"},
        lualine_z = {"location"}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {"filename"},
        lualine_x = {"location"},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    extensions = {}
}

require("telescope").setup({
    pickers = {
        find_files = {
            theme = "dropdown",
        },
        live_grep = {
            theme = "dropdown",
        },
    },
})

require("Comment").setup()
require("nvim-surround").setup()
require("lsp")

