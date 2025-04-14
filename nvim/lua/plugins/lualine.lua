return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        options = {
            icons_enabled = true,
            theme = 'auto',
            component_separators = { left = '', right = ''},
            section_separators = { left = '', right = ''},
            disabled_filetypes = {
                "neo-tree",
                "Telescope",
            },
            ignore_focus = {},
            always_divide_middle = true,
            always_show_tabline = true,
            globalstatus = false,
            refresh = {
                statusline = 100,
                tabline = 100,
                winbar = 100,
            }
        },
        sections = {
            lualine_a = {'mode'},
            lualine_b = {{'filename', path = 1}},
            lualine_c = {},
            lualine_x = {'branch'},
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
        tabline = {
            lualine_a = {{
                'buffers',
                buffers_color = {
                    active = 'lualine_a_normal',
                    inactive = 'lualine_b_normal',
                },
            }},
            lualine_b = {},
            lualine_c = {},
            lualine_x = {},
            lualine_y = {},
        },
        winbar = {},
        inactive_winbar = {},
        extensions = {}
    },
}
