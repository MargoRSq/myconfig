return {

    {
        "kyazdani42/nvim-tree.lua",
        event = "VeryLazy",
		cmd = { "NvimTreeToggle", "NvimTreeFocus" },
        dependecies = {"kyazdani42/nvim-web-devicons"},
        config = function()
            setup_with_options_path("nvim-tree", "plugins.configs.nvim-tree")
        end,
        keys = {
            { "<C-n>", "<cmd> NvimTreeToggle <CR>", mode = {"n", "v", "t"}},
            { "<leader>e", "<cmd> NvimTreeFocus <CR>", mode = {"n", "v", "t"}},
        }
	},
    {
        "kyazdani42/nvim-web-devicons",
    },
	{
		"nvim-telescope/telescope.nvim",
	},
}
