set nocompatible

filetype plugin indent on 
syntax enable
set t_Co=256 " support 256 colors
set termguicolors " enable true color support
set encoding=utf-8 fileencoding=utf-8

color onedark " set colorscheme
set background=dark

set hidden " necessary for keeping multiple buffers open at once
set nowrap " stop text from wrapping to next line
set lazyredraw " lazy screen re-drawing
set nohlsearch 
set pumheight=10
"set showtabline=2
set conceallevel=0 " allows to see `` in markdown files and such"
set scrolloff=8 " lines to allow from top or bottom when scrolling
set signcolumn=yes
set number relativenumber
set splitbelow splitright
set ruler laststatus=2 showmode showcmd
set wildmode=longest,list,full wildmenu

set autoindent smartindent breakindent
set incsearch ignorecase smartcase nohlsearch
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab
set nofoldenable foldmethod=indent foldnestmax=10 foldlevelstart=2

" show substitutions incrementally
if has("nvim")
    set inccommand=nosplit
endif

" Automatically delets all trailing whitespace and newlines at end of file on save
autocmd BufWritePre * %s/\s+$//e
autocmd BufWritePre * %s/\n+\$//e

" Neovim :Terminal
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert

" disables automatic commenting on newlines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" settings for .c files
autocmd FileType c setlocal shiftwidth=2 tabstop=2 softtabstop=2


" Kirby dance
:echom "<(\"<) <('')> (>\")>"
