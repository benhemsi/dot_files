Plug 'unblevable/quick-scope'

let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

augroup QuickScope
    autocmd!
    autocmd User PlugLoaded hi QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
    autocmd User PlugLoaded hi QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
augroup end
