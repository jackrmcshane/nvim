" easy caps
nnoremap <c-u> viwU
inoremap <c-u> <ESC>viwUi

" tabs moves between buffers
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>

" better tabbing
vnoremap < <gv
vnoremap > >gv

" shortcutting split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" use alt + hjkl to resize windows
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>

" Neovim :Terminal
tmap <Esc> <C-\><C-n>
tmap <C-w> <Esc><C-w>
tmap <C-d> <Esc>:q<CR>

" open horizontal terminal
nnoremap > <C-w>s<C-w>j:terminal<CR>:set nonumber<CR><S-a>

let mapleader=","
nmap <leader>r :so ~/.config/nvim/init.vim<CR>
nmap <leader>ev :e ~/.config/nvim/init.vim<CR>

