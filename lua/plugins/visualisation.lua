return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            local tokyonight = require("tokyonight")
            tokyonight.setup({ style = "moon" })
            tokyonight.load()
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        lazy = false,
        dependecies = {"kyazdani42/nvim-web-devicons"},
        config = function ()
            default_setup("lualine")
        end,
    },
    {
        "akinsho/bufferline.nvim",
        lazy = false,
        config = function ()
            default_setup("bufferline")
        end
    },
    {
        "folke/noice.nvim",
        lazy = false,
        dependecies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        },
        config = function ()
            setup_with_options_path("noice", "plugins.configs.noice")
        end
    },

    {"rcarriga/nvim-notify"},
    {"MunifTanjim/nui.nvim"},

    -- catppuccin
    -- {
    --   "catppuccin/nvim",
    --   name = "catppuccin",
    --   priority = 1000,
    -- },
}
