return {
	{
		"nvim-telescope/telescope.nvim",
		opts = {
			defaults = {
				prompt_prefix = "🔍 ",
				-- layout_strategy = "cursor",
				layout_config = { width = 0.95 },
				sorting_strategy = "ascending",
				-- winblend = 0,
			},
		},
		keys = {
			{
				"<leader>fp",
				function()
					require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
				end,
				desc = "Find Plugin File",
			},
			{
				"<leader>fg",
				function()
					require("telescope.builtin").git_files()
				end,
				desc = "Find git_files",
			},
			{
				"<leader>fs",
				function()
					require("telescope.builtin").grep_string()
				end,
				desc = "Find string in project",
			},
		},
	},
}
