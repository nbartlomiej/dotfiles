" A .vimrc that serves me in daily tasks.
"
" REQUIREMENTS:
"
"   (1) 256-color terminal; check whether yours is compatible by running:
"       tput colors
"
"
" INSTALLATION:
"
"   (1) Run this command (to download the Vundler plugin):
"       git clone http://github.com/gmarik/vundle.git ~/.vim/vundle.git
"
"   (2) Run vim and execute:
"       :BundleInstall
"

set nocompatible " explicitly get out of vi-compatible mode

" Explicitly informing that we're using 256-color terminals
let &t_Co=256

filetype off                   " required!

" ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' '
" Vundler config
"

let root = '~/.vim/vundle_bundles/'
let src = 'http://github.com/gmarik/vundle.git' 

if !isdirectory(expand(root).'/vundle')
  exec '!git clone '.src.' '.root.'/vundle'
endif

exec 'set rtp+='.root.'/vundle'
call vundle#rc(root)

" ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' '
" Vundler Bundles:
"
" repositories on github
Bundle 'tpope/vim-fugitive'
Bundle 'godlygeek/csapprox'
Bundle 'godlygeek/tabular'

filetype plugin indent on
syntax on

set ai "Auto indent
set si "Smart indet

set tabstop=2
set shiftwidth=2
set softtabstop=4
set colorcolumn=80

set showmatch " birefly jump to the matching brace on brace insert
set expandtab
set smarttab

set hls
set number

" Load matchit (% to bounce from do to end, etc.)
runtime! macros/matchit.vim

" mark trailing spaces, tabs
" set list listchars=trail:.,extends:>

" Sets how many lines of history VIM has to remember
set history=1000

" highlighting the line with cursor
set cursorline
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" setting window width to 80
function SetWindowWidthToEighty ()
  vertical-resize 20
endfunction

"autocmd WinEnter *.rb :call SetWindowWidthToEighty()

colorscheme twilight-nbartlomiej
