return {
    update_cwd = true,
    view = {
        adaptive_size = true,
        side = "right",
        width = 25,
        hide_root_folder = true,
    },
    git = {
        enable = true,
        ignore = true,
    },
    filesystem_watchers = {
        enable = true,
    },
    actions = {
        open_file = {
            resize_window = true,
        },
    },
    renderer = {
        highlight_git = true,
        highlight_opened_files = "none",
        indent_markers = {
            enable = false,
        },
        icons = {
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = false,
            },
        },
    },
}

