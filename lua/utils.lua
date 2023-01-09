function default_setup(module_name)
    local present, module = pcall(require, module_name)

    if present then
        module.setup()
    end
end

function setup_with_options(module_name, options_location)
    local module_present, module = pcall(require, module_name)
    local options_present, options = pcall(require, options_location)

    if module_present and options_present then
        module.setup(options)
    end
end

function setup_servers(servers)
    local lspconfig = require 'lspconfig'
    for _, v in ipairs(servers) do
        local opts = require("plugins.configs.lsp." .. v)
        lspconfig[v].setup(opts)
    end
end
