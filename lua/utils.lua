function Setup_with_options_path(module_name, options_location)
  local module_present, module = pcall(require, module_name)
  local options_present, options = pcall(require, options_location)

  if module_present and options_present then
    module.setup(options)
  end
end

function Setup_with_options(module_name, options)
  local module_present, module = pcall(require, module_name)

  if module_present then
    module.setup(options)
  end
end

function Setup_servers(servers)
  local lspconfig = require("lspconfig")
  for _, v in ipairs(servers) do
    local opts = {
      on_attach = require("plugins.configs.lsp.handlers").on_attach,
      capabilities = require("plugins.configs.lsp.handlers").capabilities,
    }
    local present, lang_opts = pcall(require, "plugins.configs.lsp." .. v)
    if present then
      opts = vim.tbl_deep_extend("force", lang_opts, opts)
    end
    lspconfig[v].setup(opts)
  end
end
