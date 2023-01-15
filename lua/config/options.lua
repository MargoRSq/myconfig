-- local keymap = vim.keymap

vim.opt.laststatus = 3 -- global statusline
vim.opt.showmode = false
vim.opt.termguicolors = true

vim.opt.clipboard = "unnamedplus"
vim.opt.cursorline = true

-- Indenting
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

vim.opt.fillchars = { eob = " " }
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.mouse = "a"

-- Numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = "79"
vim.opt.numberwidth = 3
vim.opt.textwidth = 80
vim.opt.ruler = false
vim.opt.scrolloff = 9

-- disable nvim intro
vim.opt.shortmess:append "sI"

vim.opt.signcolumn = "yes"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.termguicolors = true
vim.opt.timeoutlen = 400
vim.opt.undofile = true

-- interval for writing swap file to disk, also used by gitsigns
-- vim.opt.updatetime = 250
vim.opt.swapfile = false

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
vim.opt.whichwrap:append "<>[]hl"

--disable space and enter in normal mode


vim.opt.confirm = true
