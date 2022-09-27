-- creating local vars
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
local km = vim.keymap.set


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
keymap("n", "<leader>c", ":bp<bar>sp<bar>bn<bar>bd<CR>", opts)

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

