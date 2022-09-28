
" " more easy align mappings
" xmap <leader>a gaip*
" nmap <leader>a gaip*

" " terminal mode mappings (need to change)
" nmap <leader>s <C-w>s<C-w>j:terminal<CR>
" nmap <leader>vs <C-w>v<C-w>l:terminal<CR>


" nmap <leader>j :set filetype=journal<CR>

" " change 2-window splits from vert to horiz or horiz to vert
" map <leader>th <C-w>t<C-w>H
" map <leader>tk <C-w>t<C-w>K


" " DataScience
" let g:cellmode_tmux_panenumber='2'
" " ipython-shell
" noremap <leader>ss :call StartPyShell()<CR>
" noremap <leader>sk :call StopPyShell()<CR>

" " code execution
" nnoremap <leader>l :call PyShellSendLine()<CR>
" noremap <silent> <C-n> :call RunTmuxPythonCell(0)<CR>
" noremap <C-a> :call RunTmuxPythonAllCellsAbove()<CR>

" g:vimtex_view_general_viewer=1

" Replace all is aliased to S.
	nnoremap <leader>sr :%s//g<Left><Left>

" Perform dot commands over visual blocks:
	" vnoremap . :normal .<CR>
