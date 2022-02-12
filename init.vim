
call plug#begin()

" Aesthetics
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'glepnir/oceanic-material'

Plug 'ryanoasis/vim-devicons'


" Functional Aesthetics
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'


" Functionalities
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" lsp config
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp' " completion for lsp
Plug 'hrsh7th/cmp-nvim-lsp'

" snippets
Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'


call plug#end()



source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/mappings.vim
source $HOME/.config/nvim/plugin-settings/snips.vim
source $HOME/.config/nvim/plugin-settings/rainbow.vim

luafile $HOME/.config/nvim/lsp-config.lua
luafile $HOME/.config/nvim/cmp-autocomplete.lua
