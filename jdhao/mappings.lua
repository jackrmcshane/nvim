local km = vim.keymap.set
local keymap = vim.api.nvim_set_keymap

-- Go to start or end of line easier
km({ "n", "x" }, "H", "^")
km({ "n", "x" }, "L", "g_")

-- Paste non-linewise text above or below current line, see https://stackoverflow.com/a/1346777/6064933
keymap("n", "<leader>p", "m`o<ESC>p``", { desc = "paste below current line" })
keymap("n", "<leader>P", "m`O<ESC>p``", { desc = "paste above current line" })


-- Insert a blank line below or above current line (do not move the cursor),
-- see https://stackoverflow.com/a/16136133/6064933
keymap("n", "<space>o", "printf('m`%so<ESC>``', v:count1)", {
  expr = true,
  desc = "insert line below",
})

keymap("n", "<space>O", "printf('m`%sO<ESC>``', v:count1)", {
  expr = true,
  desc = "insert line above",
})

-- Move the cursor based on physical lines, not the actual lines.
keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })
km("n", "^", "g^")
km("n", "0", "g0")

-- Always use very magic mode for searching
km("n", "/", [[/\v]])

-- Do not move my cursor when joining lines.
km("n", "J", "", {
  desc = "join line",
  callback = function()
    vim.cmd([[
      normal! mzJ`z
      delmarks z
    ]])
  end,
})

km("n", "gJ", "mzgJ`z", {
  desc = "join visual lines",
  callback = function()
    -- we must use `normal!`, otherwise it will trigger recursive mapping
    vim.cmd([[
      normal! zmgJ`z
      delmarks z
    ]])
  end,
})


-- insert semicolon in the end
km("i", "<A-;>", "<Esc>miA;<Esc>`ii")

-- Go to the beginning and end of current line in insert mode quickly
km("i", "<C-A>", "<HOME>")
km("i", "<C-E>", "<END>")
