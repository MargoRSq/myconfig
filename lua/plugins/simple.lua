return {
    -- {
    --     "kylechui/nvim-surround",
    --     event = "VeryLazy",
    --     config = function()
    --         default_setup("nvim-surround")
    --     end,
    -- },
    {
        "Pocco81/auto-save.nvim",
        -- event = "VeryLazy",
        config = function()
            default_setup("auto-save")
        end
    },
    -- {
    --     "echasnovski/mini.nvim",
    --     event = "VeryLazy",
    --     branch = 'stable',
    -- },
    {
        "numToStr/Comment.nvim",
        config = function()
            default_setup("Comment")
        end,
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
}
