return {

    -- uncomment and add lsp servers with their config to servers below
    {
        "neovim/nvim-lspconfig",
        event = "BufReadPre",
        dependencies = {
            { "folke/neoconf.nvim", cmd = "Neoconf", config = true },
            { "folke/neodev.nvim", config = true },
            "mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "hrsh7th/cmp-nvim-lsp",
        },
        config = function()
            local servers = {"sumneko_lua", "clangd"}
            setup_servers(servers)
       end,
    },

    -- uncomment and add tools to ensure_installed below
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "lua-languge-server",
                "gopls",
                "clangd",
                "stylua",
                "shellcheck",
                "shfmt",
                "flake8",
            },
        },
        cmd = { "Mason" },
    },
}

