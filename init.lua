
-- load lua config files
require('config/packer')
require('config/options')
require('config/mappings')
require('config/autocommands')
require('config/colorscheme')
require('config/plugins/lualine')
require('config/plugins/bufferline')
-- require('config/plugins/shade')

-- load jdhao config files
local jdhao_conf_files = {
    'options.vim',
    'mappings.lua',
    'autocommands.vim',
    'mappings.vim',
    'snips.vim',
    'leaderf.vim',
    'mundo.vim',
    'better-escape.vim',
    'neoformat.vim',
    'sandwich.vim',
    'asyncrun.vim',
    'wilder.vim',
    'autosave.vim',
    'vista.vim',
    -- 'codi.vim',
    -- 'gdb.vim',
    -- 'matchup.vim',
    -- 'vim-markdown.vim',
    -- 'unicode.vim'
}

for _, name in ipairs(jdhao_conf_files) do
    local path = string.format("%s/jdhao/%s", vim.fn.stdpath("config"), name)
    local source_cmd = "source" .. path
    vim.cmd(source_cmd)
end

