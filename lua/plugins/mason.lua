--@type lspconfig.options
local servers = {
	pyright = {},
	lua_ls = {},
	pylsp = {},
	clangd = {},
}

return {
	{
		"neovim/nvim-lspconfig",
		---@class PluginLspOpts
		opts = {
			---@type lspconfig.options
			servers = servers,
		},
	},
}
