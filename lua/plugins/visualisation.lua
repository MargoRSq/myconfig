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
        "rcarriga/nvim-notify",
        event = "VeryLazy",
        config = function()
            vim.notify = require("notify")
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        lazy = false,
        dependecies = {"kyazdani42/nvim-web-devicons"},
        config = function ()
            require('lualine').setup({})
        end,
    }

    -- catppuccin
    -- {
    --   "catppuccin/nvim",
    --   name = "catppuccin",
    --   priority = 1000,
    -- },
}
