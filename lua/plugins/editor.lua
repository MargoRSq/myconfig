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
}
