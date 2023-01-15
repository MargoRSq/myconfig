vim.cmd([[
  augroup MiniStarterJK
    au!
    au User MiniStarterOpened nmap <buffer> j <Cmd>lua MiniStarter.update_current_item('next')<CR>
    au User MiniStarterOpened nmap <buffer> k <Cmd>lua MiniStarter.update_current_item('prev')<CR>
  augroup END
]])

-- vim.api.nvim_create_autocmd("VimEnter", {
--   callback = function()
--     vim.cmd "NvimTreeToggle"
--   end,
-- })
--
