
"""""""""""""""""""""""""plasticboy/vim-markdown settings"""""""""""""""""""
" Disable header folding
let g:vim_markdown_folding_disabled = 1

" Whether to use conceal feature in markdown
let g:vim_markdown_conceal = 1

" Disable math tex conceal and syntax highlight
let g:tex_conceal = ''
let g:vim_markdown_math = 0

" Support front matter of various format
let g:vim_markdown_frontmatter = 1  " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format

" Let the TOC window autofit so that it doesn't take too much space
let g:vim_markdown_toc_autofit = 1



" settings from old config to be reintroduced
" autocmd BufNewFile,BufRead *.md set filetype=markdown
" let g:vim_markdown_conceal = 2
" let g:vim_markdown_conceal_code_blocks = 0
" let g:vim_markdown_math = 1
" let g:vim_markdown_toml_frontmatter = 1
" let g:vim_markdown_frontmatter = 1
" let g:vim_markdown_strikethrough = 1
" let g:vim_markdown_autowrite = 1
" let g:vim_markdown_edit_url_in = 'tab'
" let g:vim_markdown_follow_anchor = 1
