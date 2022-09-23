
-- load lua config files
require('config/options')
require('config/mappings')
require('config/autocommands')
require('config/packer')
require('config/colorscheme')


-- load vimscript config files
local vimscript_files = {
    'snips.vim'
}

for _, name in ipairs(vimscript_files) do -- this will also work for .lua files
    local path = string.format("%s/vimscript/%s", vim.fn.stdpath("config"), name)
    local source_cmd = "source " .. path
    vim.cmd(source_cmd)
end



-- load jdhao config files
local jdhao_conf_files = {
    'options.vim',
    'mappings.lua'
}

for _, name in ipairs(jdhao_conf_files) do
    local path = string.format("%s/jdhao/%s", vim.fn.stdpath("config"), name)
    local source_cmd = "source" .. path
    vim.cmd(source_cmd)
end
