M = {}

M.servers = {
    "sumneko_lua",
    "clangd",
    "gopls",
}

M.mason_options = {
    ensure_installed = M.servers,
    automatic_installation = true,
}

return M
