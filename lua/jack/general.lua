vim.opt.wrap = false
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.wo.signcolumn = 'yes'
--
-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

--Map blankline
vim.g.indent_blankline_char = '┊'
vim.g.indent_blankline_filetype_exclude = { 'help', 'packer' }
vim.g.indent_blankline_buftype_exclude = { 'terminal', 'nofile' }
vim.g.indent_blankline_show_trailing_blankline_indent = false

--Decrease update time
vim.o.updatetime = 250

--Enable mouse mode
vim.o.mouse = 'a'

--Set highlight on search
vim.o.hlsearch = false


-- Highlight on yank
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]
