local config_status_ok, null_ls = pcall(require, "null-ls")
if not config_status_ok then
    return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

return {
    -- sources = {
    --     null_ls.builtins.formatting.stylua,
    --     null_ls.builtins.diagnostics.eslint,
    --     null_ls.builtins.completion.spell,
    --     formatting.prettier.with { extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } },
    --     formatting.black.with { extra_args = { "--fast" } },
    --     -- formatting.yapf,
    --     formatting.stylua,
    --     diagnostics.flake8,
    -- }
}
