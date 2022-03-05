local opts = { noremap = true }
local keymap = vim.api.nvim_set_keymap

require("harpoon").setup({
    nav_first_in_list = true,
})


-- keymap("n", "<leader>el", ":e ~/.config/nvim/init.lua<CR>", opts)

keymap("n", "<leader>a", ":lua require(\"harpoon.mark\").add_file()<CR>", opts)
-- hotkey navigation
keymap("n", "<leader>1", ":lua require(\"harpoon.ui\").nav_file(1)<CR>", opts)
keymap("n", "<leader>2", ":lua require(\"harpoon.ui\").nav_file(2)<CR>", opts)
keymap("n", "<leader>3", ":lua require(\"harpoon.ui\").nav_file(3)<CR>", opts)
keymap("n", "<leader>4", ":lua require(\"harpoon.ui\").nav_file(4)<CR>", opts)

-- cycle through marked files
keymap("n", "<C-i>", ":lua require(\"harpoon.ui\").nav_next()<CR>", opts)
keymap("n", "<C-o>", ":lua require(\"harpoon.ui\").nav_next()<CR>", opts)

keymap("n", "<C-p>", ":lua require(\"harpoon.ui\").toggle_quick_menu()<CR>", opts)
