
call plug#begin()

" Aesthetics
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'glepnir/oceanic-material'

Plug 'ryanoasis/vim-devicons'


" Functional Aesthetics
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


" Functionalities
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

" lsp config
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp' " completion for lsp


call plug#end()



source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/mappings.vim
source $HOME/.config/nvim/plugin-settings/snips.vim
source $HOME/.config/nvim/plugin-settings/rainbow.vim

luafile $HOME/.config/nvim/lsp-config.lua
