--@type lspconfig.options
local servers = {
  pyright = {},
  lua_ls = {},
  pylsp = {},
  clangd = {},
}

return {

  {
    "williamboman/mason.nvim",
    opts = {},
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      automatic_installation = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = servers,
    },
  },
}
