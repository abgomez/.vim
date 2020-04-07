set nocompatible
filetype plugin indent on
syntax on

execute pathogen#infect()
"-------------------------------------------------------------------------------
" NerdTree Plugin Options
"-------------------------------------------------------------------------------
let NERDTreeDirArrows=0
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>
set tabstop=2
set expandtab
set shiftwidth=2
" vim typescript
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
" autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
