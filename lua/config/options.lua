local opt = vim.opt
local keymap = vim.keymap

opt.laststatus = 3 -- global statusline
opt.showmode = false

opt.clipboard = "unnamedplus"
opt.cursorline = true

-- Indenting
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4

opt.fillchars = { eob = " " }
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"

-- Numbers
opt.number = true
opt.relativenumber = true
opt.colorcolumn = "79"
opt.numberwidth = 3
opt.textwidth = 80
opt.ruler = false
opt.scrolloff = 9

-- disable nvim intro
opt.shortmess:append "sI"

opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 400
opt.undofile = true

-- interval for writing swap file to disk, also used by gitsigns
-- opt.updatetime = 250
opt.swapfile = false

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append "<>[]hl"

--disable space and enter in normal mode
keymap.set('n', '<Space>', '<NOP>')
keymap.set('n', '<Enter>', '<NOP>')

-- disable some builtin vim plugins
keymap.set('n', '<Up>', 'VdkP')
keymap.set('n', '<Down>', 'Vdp')

keymap.set('t', 'jk', [[<C-\><C-n>]])
keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]])
keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]])
keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]])
keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]])

