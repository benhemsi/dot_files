Plug 'airblade/vim-gitgutter'

" git-gutter
nmap <leader>gg :GitGutterToggle<CR>
nmap <leader>gp <Plug>(GitGutterPreviewHunk)
nmap <leader>gu <Plug>(GitGutterUndoHunk)
nmap <leader>gs <Plug>(GitGutterStageHunk) 
nmap <leader>gh :GitGutterLineHighlightsToggle<CR>
nmap <leader>gf :GitGutterFold<CR>
" ]c and [c to go to next and previous hunks
