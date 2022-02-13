local options = {

	-- Set completeopt to have a better completion experience
	completeopt = { 'menuone', 'noselect' },
	fileencoding = 'utf-8',

	mouse = 'a',
	wrap = false,
	hidden = true,
	number = true,
	relativenumber = true,

	updatetime = 250,
	showmode = false,
	signcolumn = 'yes',
	cursorline = true,
	-- showtabline = 2,

	splitright = true,
	splitbelow = true,

    -- tabbing
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
	expandtab = true,
    smarttab = true,

    -- indentation
    autoindent = true,
    smartindent = true,
    breakindent = true,

	--Set highlight on search
	hlsearch = false,
    incsearch = true,
	ignorecase = true,
	smartcase = true,
    inccommand = 'nosplit',

    -- folding
    foldenable = false,
    foldminlines = 4,
    foldnestmax = 10,
    foldmethod = 'expr',
    foldexpr = 'nvim_treesitter#foldexpr()',

}


for k, v in pairs(options) do
	vim.opt[k] = v
end


-- Don't pass messages to |ins-completion-menu|.
vim.opt.shortmess:append 'c'

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
