
call plug#begin()

" Aesthetics
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'glepnir/oceanic-material'

Plug 'ryanoasis/vim-devicons'

" Functional Aesthetics


" Functionalities

call plug#end()



source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/mappings.vim

luafile $HOME/.config/nvim/lua/jack/options.lua
