local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap('n', '<Space>', '<NOP>', opts)
keymap('n', '<Enter>', '<NOP>', opts)
keymap('n', ';', '<NOP>', opts)
keymap('n', '<Esc>', "<cmd> noh <CR>", opts)

-- vim.g.mapleader = " "
-- vim.g.maplocalleader = " "


-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<S-h>", "<C-w>h", opts)
keymap("n", "<S-j>", "<C-w>j", opts)
keymap("n", "<S-l>", "<C-w>l", opts)
keymap("n", "<S-k>", "<C-w>k", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<C-l>", ":bnext<CR>", opts)
keymap("n", "<C-h>", ":bprevious<CR>", opts)
keymap("n", "<C-r>", "[[<CMD>lua require('close_buffers').delete({type = 'this'})<CR>]]", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to exit insert mode 
-- keymap("i", "jk", "<ESC>", opts)
-- keymap("i", "kj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", ">", ">gv", opts)
keymap("v", "<", "<gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap('t', '<S-h>', [[<Cmd>wincmd h<CR>]], term_opts)
keymap('t', '<S-j>', [[<Cmd>wincmd j<CR>]], term_opts)
keymap('t', '<S-k>', [[<Cmd>wincmd k<CR>]], term_opts)
keymap('t', '<S-l>', [[<Cmd>wincmd l<CR>]], term_opts)

keymap("n", "<leader>1", "<cmd> lua _LAZYGIT_TOGGLE() <CR>", term_opts)
keymap("n", "<leader>2", "<cmd> lua _PYTHON_TOGGLE() <CR>", term_opts)
keymap("n", "<leader>3", "<cmd> lua _HTOP_TOGGLE() <CR>", term_opts)
keymap("n", "<leader>4", "<cmd> lua _NCDU_TOGGLE() <CR>", term_opts)
keymap("n", "<leader>5", "<cmd> lua _PSQL_TOGGLE() <CR>", term_opts)

