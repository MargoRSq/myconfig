return {

  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    ensure_installed = {
      "bash",
      "help",
      "html",
      "javascript",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "go",
      "c",
      "cpp",
      "python",
      "regex",
      "typescript",
      "vim",
      "yaml",
    },
  },
}
