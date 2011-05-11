set nocompatible " explicitly get out of vi-compatible mode
syntax on
filetype plugin indent on

" Load matchit (% to bounce from do to end, etc.)
runtime! macros/matchit.vim

augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END


set history=1000 " Sets how many lines of history VIM has to remember

set ai "Auto indent
set si "Smart indet
set tabstop=2
set showmatch
set shiftwidth=2
set expandtab

set smarttab

set number

" setting persistent undo 
set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

