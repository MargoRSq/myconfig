return {
    {
        "echasnovski/mini.sessions",
        event = "VimEnter",
        lazy = false,
        config = function ()
            setup_with_options_path("mini.sessions", "plugins.configs.sessions")
        end,
    },
    {
        "echasnovski/mini.starter",
        event = "VimEnter",
        dependincies = {
            "echasnovski/mini.sessions"
        },
        config = function ()
            setup_with_options_path("mini.starter", "plugins.configs.starter")
        end,
    },
}
