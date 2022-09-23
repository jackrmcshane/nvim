
-- automatically calls :PackerCompiler after writing to init.lua
vim.cmd [[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]]

-- Highlight on yank
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]


vim.cmd [[
  augroup StopNewLineComments
    autocmd!
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
  augroup end
]]


vim.cmd [[
  augroup RemoveWhitespace
    autocmd!
    autocmd BufWritePre * %s/\s+$//e
    autocmd BufWritePre * %s/\n+\$//e
  augroup end
]]


vim.cmd [[
  augroup NvimTerminal
    autocmd!
    autocmd BufWinEnter,WinEnter term://* startinsert
    autocmd BufLeave term://* stopinsert
]]


vim.cmd [[
  augroup CFiles
    autocmd!
    autocmd FileType c setlocal shiftwidth=2 tabstop=2 softtabstop=2
  augroup end
]]


vim.cmd [[
  augroup TexFiles
    autocmd!
    autocmd FileType tex setl updatetime=3
  augroup end
]]

vim.cmd [[ :echom "<(\"<) <('')> (>\")>" ]]
