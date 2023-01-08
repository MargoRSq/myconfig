return {
    {
        "rafamadriz/friendly-snippets",
        module = { "cmp", "cmp_nvim_lsp" },
        event = "InsertEnter",
  },
  {
      "hrsh7th/nvim-cmp",
      dependencies = "friendly-snippets",
      config = function()
          -- require "plugins.configs.cmp"
          default_setup("nvim-cmp")
      end,
  },
  {
      "L3MON4D3/LuaSnip",
      dependencies = {"friendly-snippets", "nvim-cmp"},
      config = function()
          default_setup("LuaSnip")
          -- require("plugins.configs.others").luasnip()
      end,
  },

  {
      "saadparwaiz1/cmp_luasnip", dependencies = "LuaSnip"
  },
  {
      "hrsh7th/cmp-nvim-lua", dependencies = "cmp_luasnip"
  },
  {
      "hrsh7th/cmp-nvim-lsp", dependencies = "cmp-nvim-lua"
  },
  {
      "hrsh7th/cmp-buffer", dependencies = "cmp-nvim-lsp"
  },
  {
      "hrsh7th/cmp-path",  dependencies = "cmp-buffer"
  },
}
