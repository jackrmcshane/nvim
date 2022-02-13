
--Set colorscheme
vim.o.termguicolors = true
vim.cmd [[colorscheme onedark]]

--Set statusbar
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'onedark',
    component_separators = '|',
    section_separators = '',
  },
}
