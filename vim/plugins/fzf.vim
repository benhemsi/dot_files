Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'monkoose/fzf-hoogle.vim'

nnoremap <leader>e  :GFiles<CR>
nnoremap <leader>E  :Files<CR>
nnoremap <leader>bu :Buffers<CR>
nnoremap <leader>bl :Lines<CR>
nnoremap <leader>p  :History<CR>
nnoremap <leader>gr :Rg<space>
nnoremap <leader>gb :GBranches<CR>
nnoremap <leader>hg :Hoogle<CR>
let g:hoogle_fzf_open_browser = 'ctrl-o'
let g:hoogle_fzf_copy_import = 'ctrl-y'
