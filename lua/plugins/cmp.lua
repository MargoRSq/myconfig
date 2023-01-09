return {
    {
        "hrsh7th/nvim-cmp",
        -- event = "InsertEnter",
        dependencies = {
            "friendly-snippets",
            "LuaSnip",
            "cmp_luasnip",
            "cmp-nvim-lua",
            "cmp-nvim-lsp",
            "cmp-buffer",
            "cmp-path",
        },
        config = function()
            setup_with_options("cmp", "plugins.configs.cmp")
        end,
    },
    {
        "rafamadriz/friendly-snippets",
        -- module = { "cmp", "cmp_nvim_lsp" },
    },
    {
        "L3MON4D3/LuaSnip",
    },
    {
        "saadparwaiz1/cmp_luasnip"
    },
    {
        "hrsh7th/cmp-nvim-lua"
    },
    {
        "hrsh7th/cmp-nvim-lsp"
    },
    {
        "hrsh7th/cmp-buffer"
    },
    {
        "hrsh7th/cmp-path"
    },
}
