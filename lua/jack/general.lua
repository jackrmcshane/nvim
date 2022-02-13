vim.opt.wrap = false
vim.opt.splitright = true
vim.opt.splitbelow = true


-- Highlight on yank
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]
