-- declaring local vars
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- init.lua
keymap("n", "<leader>r", ":so ~/.config/nvim/init.lua<CR>", { noremap = true })
keymap("n", "<leader>el", ":e ~/.config/nvim/init.lua<CR>", opts)


--Remap for dealing with word wrap
keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })


-- easy caps
keymap("n", "<C-u>", "viwU", opts)
keymap("i", "<C-u>", "<Esc>viwUi", opts)

-- buffer movement
keymap("n", "<Tab>", ":bnext<CR>", { noremap = true })
keymap("n", "<S-Tab>", ":bprevious<CR>", { noremap = true })

-- better tabbing
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- window resizing
keymap("n", "<A-j>", ":resize -2<CR>", opts)
keymap("n", "<A-k>", ":resize +2<CR>", opts)
keymap("n", "<A-h>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-l>", ":vertical resize +2<CR>", opts)


-- terminal
keymap("n", ">", "<C-w>s<C-w>j:terminal<CR>:set nonumber<CR><S-a>", opts)
keymap("t", "<Esc>", "<C-\\><C-n>", opts)
-- keymap("t", "<C-w>", "<Esc><C-w>", opts) -- not working
-- keymap("t", "<C-d>", "<Esc>:q<CR>", opts) -- not working



-- Diagnostic keymaps
keymap('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true })
keymap('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', { noremap = true, silent = true })
