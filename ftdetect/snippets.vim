
" detect snippets files and set filetype appropriately
augroup det_snippet
  autocmd!
  autocmd BufRead,BufNewFile *.snippets set filetype=snippets
augroup END

