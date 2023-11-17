Plug 'voldikss/vim-floaterm'

nnoremap <silent><F1> :FloatermNew<CR>
tnoremap <silent><F1> <C-\><C-n>:FloatermKill<CR>
nnoremap <leader>B :FloatermNew stack build --fast --haddock-deps<CR>
nnoremap <leader>T :FloatermNew stack test --fast --haddock-deps<CR>
nnoremap <leader>t :call TestSingle()<CR>

function! TestSingle()
  let testName = substitute(expand("%:t:r"), "Spec", "", "")
  execute ":FloatermNew stack test --fast --haddock-deps --test-arguments --match=" . testName
endfunction
