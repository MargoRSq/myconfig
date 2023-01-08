return {

    {
        "kylechui/nvim-surround",
    },

    {
        "Pocco81/auto-save.nvim",
--        event = "VeryLazy",
        config = function()
            default_setup("auto-save")
        end
    },
    {
        "williamboman/mason.nvim",
    },
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
	{
		"numToStr/Comment.nvim",
	},
	{
		"windwp/nvim-autopairs",
	},

	{
		"echasnovski/mini.pairs",
		event = "VeryLazy",
		config = function()
			require("mini.pairs").setup({})
		end,
	},
}
