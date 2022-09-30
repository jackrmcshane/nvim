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


-- harpoon mappings
km('n', "<leader>a", ":lua require('harpoon.mark').add_file()<CR>", { noremap = true })
km('n', "<leader>1", ":lua require('harpoon.ui').nav_file(1)<CR>")
km('n', "<leader>2", ":lua require('harpoon.ui').nav_file(2)<CR>")
km('n', "<leader>3", ":lua require('harpoon.ui').nav_file(3)<CR>")
km('n', "<leader>4", ":lua require('harpoon.ui').nav_file(4)<CR>")
km('n', "<leader>o", ":lua require('harpoon.ui').toggle_quick_menu()<CR>")

-- Enable highlighting for lua HERE doc inside vim script
vim.g.vimsyn_embed = 'l'

-- use filetype.lua instead of filetype.vim
vim.g.do_filetype_lua = 1
vim.g.did_load_filetypes = 0

-- Do not use builtin matchit.vim and matchparen.vim since we use vim-matchup
vim.g.loaded_matchit = 1
vim.g.loaded_matchparen = 1

