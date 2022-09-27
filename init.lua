
-- load lua config files
require('config/packer')
require('config/options')
require('config/mappings')
require('config/autocommands')
require('config/colorscheme')
require('config/plugins/lualine')
require('config/plugins/bufferline')

-- load jdhao config files
local jdhao_conf_files = {
    'options.vim',
    'mappings.lua',
    'autocommands.vim',
    'snips.vim',
    'leaderf.vim',
    'mundo.vim',
    'better-escape.vim',
    'neoformat.vim',
    -- 'vim-markdown.vim',
    'sandwich.vim',
    -- 'matchup.vim',
    'asyncrun.vim',
    -- 'gdb.vim',
    'wilder.vim',
    'autosave.vim',
    'vista.vim',
    -- 'unicode.vim'
}

for _, name in ipairs(jdhao_conf_files) do
    local path = string.format("%s/jdhao/%s", vim.fn.stdpath("config"), name)
    local source_cmd = "source" .. path
    vim.cmd(source_cmd)
end

