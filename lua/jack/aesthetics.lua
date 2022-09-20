
--Set colorscheme
vim.o.termguicolors = true
-- vim.o.background = dark
vim.cmd [[colorscheme gruvbox]]

--Set statusbar
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox',
    component_separators = '|',
    section_separators = '',
  },
}
