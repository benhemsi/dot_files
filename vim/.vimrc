syntax on

set backspace=indent,eol,start  
set colorcolumn=120
set encoding=UTF-8
set expandtab
set hidden
set ignorecase
set incsearch
set laststatus=2
set mouse=a
set noerrorbells
set noshowmode
set noswapfile
set nowrap
set number relativenumber
set path+=**
set scrolloff=10
set shiftwidth=2
set showmatch	
set smartcase
set smartindent
set splitbelow splitright
set t_Co=256
set tabstop=2 softtabstop=2
set tags=tags
set updatetime=100
set wildmenu

let mapleader = " "

call plug#begin('~/.vim/plugged')

source ~/dot_files/vim/plugins/coc.vim
source ~/dot_files/vim/plugins/floaterm.vim
source ~/dot_files/vim/plugins/fzf.vim
source ~/dot_files/vim/plugins/gitgutter.vim
source ~/dot_files/vim/plugins/gruvbox.vim
source ~/dot_files/vim/plugins/gundo.vim
source ~/dot_files/vim/plugins/haskell_vim.vim
source ~/dot_files/vim/plugins/hindent.vim
source ~/dot_files/vim/plugins/lightline.vim
source ~/dot_files/vim/plugins/magnedit.vim
source ~/dot_files/vim/plugins/multiple_cursors.vim
source ~/dot_files/vim/plugins/nerdtree.vim
source ~/dot_files/vim/plugins/quick_scope.vim
source ~/dot_files/vim/plugins/sneak.vim
source ~/dot_files/vim/plugins/tagbar.vim
source ~/dot_files/vim/plugins/tpope.vim
" source ~/.vim/plugins/easymotion.vim
"dispatch

call plug#end()

doautocmd User PlugLoaded

nnoremap gf :edit <cfile><CR>
nnoremap <leader>ve :e ~/.vimrc<CR>
nnoremap <leader>so :source ~/.vimrc<CR>

inoremap jj <Esc><Esc>
inoremap <C-]> <C-X><C-]>
inoremap <C-F> <C-X><C-F>
inoremap <C-D> <C-X><C-D>
inoremap <C-L> <C-X><C-L>
inoremap <C-V> <C-R>+

nnoremap Y y$
nnoremap H _
nnoremap L $
nnoremap <Tab> >>
nnoremap <S-Tab> <<
nnoremap <leader>h <C-W>h
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l
nnoremap <leader>H <C-W>H
nnoremap <leader>J <C-W>J
nnoremap <leader>K <C-W>K
nnoremap <leader>L <C-W>L
nnoremap <leader>R <C-W>R
nnoremap <leader>= <C-W>=
nnoremap <leader><CR> mzo<Esc><Esc>`z
nnoremap <leader><Backspace> mzO<Esc><Esc>`z
nnoremap gp "+p
nnoremap gP "+P
nnoremap gy "+y

vnoremap / "zy/<C-R>z/gc<CR>
vnoremap <C-R> "hy:%s/<C-r>h//gc<left><left><left>
vnoremap H _
vnoremap L $
vnoremap <Tab> >><Esc><Esc>gv
vnoremap <S-Tab> <<<Esc><Esc>gv
vnoremap gy "+y
vnoremap <C-C> "+y

function! GetModuleName()
  let moduleLineNumber = search('module')
  let moduleLine = getline(moduleLineNumber)
  return matchstr(moduleLine, 'module\s\+\zs\S\+')
endfunction

function! Rename(replacement)
  let pattern = expand("<cword>")
  let moduleName = GetModuleName()
  let replacement = "%s/" . pattern . "/" . a:replacement . "/g"
  execute ":" . replacement
  let argaCommand = "arga `find . -name '*.hs' -exec grep -le 'import " . moduleName . "' {} \\;`"
  execute argaCommand
  execute "argdo " . replacement
  argdo update
endfunction

function! CreateTest()
  let moduleName = GetModuleName()
  let fileName = expand("%:p")
  if fileName =~ "/src/"
    let testFileName = substitute(substitute(fileName, "src", "test", ""), ".hs", "Spec.hs", "")
    if !filereadable(testFileName)
      execute ":vs " . testFileName
      -1read ~/.vim/templates/hs_test.html
      execute ":s/<module-name>/" . moduleName . "Spec/g"
      w
      call cursor(6, 13)
      startinsert
    else
      execute ":e " . testFileName
    endif
  endif
endfunction

nnoremap <leader>rn :call Rename("")<left><left>
nnoremap <leader>nt :call CreateTest()<CR>
