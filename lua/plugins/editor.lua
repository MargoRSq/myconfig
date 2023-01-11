return {
    {
        "Pocco81/auto-save.nvim",
        -- event = "VeryLazy",
        config = true
    },
    {
        "numToStr/Comment.nvim",
        config = true,
        keys =
        {
            { "<leader>/",
            "<cmd>lua require('Comment.api').toggle.linewise()<CR>",
            "toggle comment",
            mode = "n", },
            { "<leader>/",
            "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
            "toggle comment",
            mode = "v", },
        },
    },
    -- {
    --     "windwp/nvim-autopairs",
    --     event = "VeryLazy",
    --     dependencies = {"nvim-cmp"},
    --     config = function()
    --             local present1, autopairs = pcall(require, "nvim-autopairs")
    --             local present2, cmp = pcall(require, "cmp")
    --
    --             if not (present1 and present2) then
    --                 return
    --             end
    --
    --             -- local options = {
    --             --     fast_wrap = {},
    --             --     disable_filetype = { "TelescopePrompt", "vim" },
    --             -- }
    --
    --             -- options = load_override(options, "windwp/nvim-autopairs")
    --             autopairs.setup({})
    --
    --             local cmp_autopairs = require "nvim-autopairs.completion.cmp"
    --             cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    --         end
    -- },
}
