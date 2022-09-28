-- creating local vars
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
local km = vim.keymap.set

vim.g.mapleader = ','
vim.g.maplocalleader = ','

-- init.lua
keymap("n", "<leader>r", ":so ~/.config/nvim/init.lua<CR>", { noremap = true })
keymap("n", "<leader>e", ":e ~/.config/nvim/init.lua<CR>", opts)

-- easy caps
keymap("n", "<C-u>", "viwU", opts)
keymap("i", "<C-u>", "<Esc>viwUi", opts)

-- buffer movement
keymap("n", "<Tab>", ":bnext<CR>", { noremap = true })
keymap("n", "<S-Tab>", ":bprevious<CR>", { noremap = true })

-- close buffer without closing window
keymap("n", "<leader>x", ":bp<bar>sp<bar>bn<bar>bd<CR>", opts)

-- better tabbing
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- -- window resizing
-- keymap("n", "<A-j>", ":resize -2<CR>", opts)
-- keymap("n", "<A-k>", ":resize +2<CR>", opts)
-- keymap("n", "<A-h>", ":vertical resize -2<CR>", opts)
-- keymap("n", "<A-l>", ":vertical resize +2<CR>", opts)


-- Enable highlighting for lua HERE doc inside vim script
vim.g.vimsyn_embed = 'l'

-- use filetype.lua instead of filetype.vim
vim.g.do_filetype_lua = 1
vim.g.did_load_filetypes = 0

-- Do not use builtin matchit.vim and matchparen.vim since we use vim-matchup
vim.g.loaded_matchit = 1
vim.g.loaded_matchparen = 1

