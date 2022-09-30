
"""""""""""""""""""""""""UltiSnips settings"""""""""""""""""""
" Trigger configuration. Do not use <tab> if you use YouCompleteMe
let g:UltiSnipsExpandTrigger='<C-Space>'

" Do not look for SnipMate snippets
let g:UltiSnipsEnableSnipMate = 0
" if you want :UltiSnipsEdit to split your window
let g:UltiSnipsEditSplit="vertical"

" Shortcut to jump forward and backward in tabstop positions
let g:UltiSnipsJumpForwardTrigger='<C-n>'
let g:UltiSnipsJumpBackwardTrigger='<C-p>'

" Configuration for custom snippets directory, see
" https://jdhao.github.io/2019/04/17/neovim_snippet_s1/ for details.
let g:UltiSnipsSnippetDirectories=['UltiSnips', 'my_snippets']
let g:snips_author="Jack McShane"
let g:snips_email="jackrmcshane@gmail.com"
let g:snips_github="https://github.com/jackrmcshane/"
