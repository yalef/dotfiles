vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function() 
    use 'wbthomason/packer.nvim'
    
    -- UI
    use {
        'folke/tokyonight.nvim',
        config = function()
            vim.cmd[[colorscheme tokyonight]]
        end
    }

    use {
	    'nvim-lualine/lualine.nvim',
	    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = function()
            require('lualine').setup {
                options = {
                    icons_enabled = false,
                    theme = 'tokyonight',
                    component_separators = { left = '', right = ''},
                    section_separators = { left = '', right = ''},
                    disabled_filetypes = {},
                    always_divide_middle = true,
                    globalstatus = false,
                },
                sections = {
                    lualine_a = {'mode'},
                    lualine_b = {'branch'},
                    lualine_c = {'filename'},
                    lualine_x = {'filetype'},
                    lualine_y = {'progress'},
                    lualine_z = {'location'}
                },
                inactive_sections = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_c = {'filename'},
                    lualine_x = {'location'},
                    lualine_y = {},
                    lualine_z = {}
                },
                tabline = {},
                extensions = {}
            }
        end,
    }

    -- Formatting
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use{
        "kylechui/nvim-surround",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here
                -- Usage: 
                -- ysiw" : test -> "test"
                -- ysa"( : "test" -> ("test")
            })
        end
    }
end)

