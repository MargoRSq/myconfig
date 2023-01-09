return {
    cmd = {"gopls", "serve"},
    filetypes = {"go", "gomod"},
    -- root_dir = utils.root_pattern("go.work", "go.mod"),
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
            },
            staticcheck = true,
        },
    },
}
