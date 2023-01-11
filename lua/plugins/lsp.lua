local languages = require("plugins.configs.lsp.languages")

return {
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        dependencies = {
            { "folke/neoconf.nvim", cmd = "Neoconf", config = true },
            { "folke/neodev.nvim", config = true },
            "mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "hrsh7th/cmp-nvim-lsp",
        },
        config = function()
            require("plugins.configs.lsp.handlers").setup()
            setup_servers(languages.servers)
        end,
    },
    {
        "williamboman/mason.nvim",
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
        },
        cmd = {"Mason"},
        config = true
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            setup_with_options("mason-lspconfig", languages.mason_options)
        end,
    },
}

