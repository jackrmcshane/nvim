local km = vim.keymap.set
local keymap = vim.api.nvim_set_keymap

-- Go to start or end of line easier
km({ "n", "x" }, "H", "^")
km({ "n", "x" }, "L", "g_")


-- Always use very magic mode for searching
km("n", "/", [[/\v]])

-- Paste non-linewise text above or below current line, see https://stackoverflow.com/a/1346777/6064933
keymap("n", "<space>p", "m`o<ESC>p``", { desc = "paste below current line" })
keymap("n", "<space>P", "m`O<ESC>p``", { desc = "paste above current line" })
-- Insert a blank line below or above current line (do not move the cursor),
-- see https://stackoverflow.com/a/16136133/6064933
keymap("n", "<space>o", "printf('m`%so<ESC>``', v:count1)", { expr = true, desc = "insert line below", })
keymap("n", "<space>O", "printf('m`%sO<ESC>``', v:count1)", { expr = true, desc = "insert line above", })

-- Move the cursor based on physical lines, not the actual lines.
keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })
km("n", "^", "g^")
km("n", "0", "g0")

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

-- Toggle cursor column
km("n", "<leader>cl", "<cmd>call utils#ToggleCursorCol()<cr>", { desc = "toggle cursor column" })

-- 4 below currently not working (guessing the issue is either tmux or st)
-- Move current line up and down
km("n", "<A-k>", '<cmd>call utils#SwitchLine(line("."), "up")<cr>', { desc = "move line up" })
km("n", "<A-j>", '<cmd>call utils#SwitchLine(line("."), "down")<cr>', { desc = "move line down" })
-- Move current visual-line selection up and down
km("x", "<A-k>", '<cmd>call utils#MoveSelection("up")<cr>', { desc = "move selection up" })
km("x", "<A-j>", '<cmd>call utils#MoveSelection("down")<cr>', { desc = "move selection down" })

-- Replace visual selection with text in register, but not contaminate the register,
-- see also https://stackoverflow.com/q/10723700/6064933.
km("x", "p", '"_c<Esc>p')

-- Go to a certain buffer
km("n", "gb", '<cmd>call buf_utils#GoToBuffer(v:count, "forward")<cr>', { desc = "go to buffer (forward)", })
km("n", "gB", '<cmd>call buf_utils#GoToBuffer(v:count, "backward")<cr>', { desc = "go to buffer (backward)", })


-- Switch windows positions
km("n", "<left>", "<c-w>h")
km("n", "<Right>", "<C-W>l")
km("n", "<Up>", "<C-W>k")
km("n", "<Down>", "<C-W>j")

-- Reselect the text that has just been pasted, see also https://stackoverflow.com/a/4317090/6064933.
km("n", "<leader>v", "printf('`[%s`]', getregtype()[0])", {
  expr = true,
  desc = "reselect last pasted area",
})

-- Change text without putting it into the vim register,
-- see https://stackoverflow.com/q/54255/6064933
km("n", "c", '"_c')
km("n", "C", '"_C')
km("n", "cc", '"_cc')
km("x", "c", '"_c')

-- Replace visual selection with text in register, but not contaminate the register,
-- see also https://stackoverflow.com/q/10723700/6064933.
km("x", "p", '"_c<Esc>p')

-- Break inserted text into smaller undo units when we insert some punctuation chars.
local undo_ch = { ",", ".", "!", "?", ";", ":" }
for _, ch in ipairs(undo_ch) do
  km("i", ch, ch .. "<c-g>u")
end

-- Keep cursor position after yanking
km("n", "y", "myy")
