return {

    {
        "kyazdani42/nvim-tree.lua",
        lazy = false,
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
        "nvim-telescope/telescope.nvim",
        dependecies = { "nvim-lua/plenary.nvim", "LinArcX/telescope-env.nvim" },
        event = "VeryLazy",
        config = function ()
            setup_with_options_path("telescope", "plugins.configs.telescope")
        end,
        keys = {
            { "<leader>km", "<cmd> Telescope keymaps <CR>", mode = {"n", "v", "t"}},
            { "<leader>ff", "<cmd> Telescope find_files <CR>", mode = {"n", "v", "t"}},
            { "<leader>fg", "<cmd> Telescope live_grep <CR>", mode = {"n", "v", "t"}},
        }
    },
    {"LinArcX/telescope-env.nvim"},
    {"kyazdani42/nvim-web-devicons"},
    {"nvim-lua/plenary.nvim"},
}
