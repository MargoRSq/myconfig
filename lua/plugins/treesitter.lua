return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = "VeryLazy",
        dependecies = {"p00f/nvim-ts-rainbow"},
        config = function()
            setup_with_options_path("nvim-treesitter.configs", "plugins.configs.treesitter")
        end
    },
    {
        "p00f/nvim-ts-rainbow",
        event = "VeryLazy"
    }
}
