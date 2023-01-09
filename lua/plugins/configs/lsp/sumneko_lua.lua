return {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                checkThirdParty = false,
                library = {
                    [vim.fn.expand "$VIMRUNTIME/lua"] = true,
                    [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true,
                },
                maxPreload = 100000,
                preloadFileSize = 10000,
            },
            completion = {
                callSnippet = "Replace",
            },
        },
    },
}
