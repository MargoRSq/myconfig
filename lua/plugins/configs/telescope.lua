local actions = require "telescope.actions"

require('telescope').load_extension('env')

return {
    defaults = {

        sorting_strategy = "ascending",
        prompt_prefix = " ",
        selection_caret = " ",
        path_display = { "smart" },

        mappings = {
            i = {
                ["<C-n>"] = actions.cycle_history_next,
                ["<C-p>"] = actions.cycle_history_prev,

                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,

            },
        },
    },
}
