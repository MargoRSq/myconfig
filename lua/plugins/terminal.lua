return {
    {
        "akinsho/toggleterm.nvim",
        event = "VeryLazy",
        config = function ()
            setup_with_options_path("toggleterm", "plugins.configs.toggleterm")
        end,
        keys = {
            { "<S-t>", "<cmd> ToggleTerm <CR>", mode = {"n", "v", "t"} },
        }
    }
}
