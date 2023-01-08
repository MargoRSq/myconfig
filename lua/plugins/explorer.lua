return {

    {
        "kyazdani42/nvim-tree.lua",
        event = "VeryLazy",
		cmd = { "NvimTreeToggle", "NvimTreeFocus" },
        config = function()
            setup_with_options("nvim-tree", "plugins.configs.nvim-tree")
        end,
        keys = {
            { "<C-n>", "<cmd> NvimTreeToggle <CR>", mode = {"n", "v", "t"}},
            { "<leader>e", "<cmd> NvimTreeFocus <CR>", mode = {"n", "v", "t"}},
        }
	},
	{
		"nvim-telescope/telescope.nvim",
	},
}
