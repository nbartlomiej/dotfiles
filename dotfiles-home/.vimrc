" A .vimrc that serves me in daily tasks (@nbartlomiej).
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
"       git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
"
"   (2) Run vim and execute:
"       :BundleInstall
"

" Disabling vi-compatible mode.
set nocompatible

" Explicitly informing that we're using 256-color terminals.
let &t_Co=256


" ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' '
" Vundler config.
"

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle (required).
Bundle 'gmarik/vundle'

" ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' '
" Vundler Bundles:
"
" Repositories on github.
Bundle 'tpope/vim-fugitive'
Bundle 'godlygeek/csapprox'
Bundle 'godlygeek/tabular'


" Filetype detection, filetype plugins, indent files. Also, required by
" Vundle.
filetype plugin indent on

" Enabling syntax highlight.
syntax on

set ai " Auto indent.
set si " Smart indet.

set tabstop=2
set shiftwidth=2
set softtabstop=4
set colorcolumn=80

set showmatch " Birefly jump to the matching brace on brace insert.
set expandtab
set smarttab

set hls
set number

" Load matchit (% to bounce from do to end, etc.).
runtime! macros/matchit.vim

" Mark trailing spaces, tabs.
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=darkblue guibg=darkblue
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/

" Sets how many lines of history VIM has to remember.
set history=1000

" Highlighting the line with cursor.
set cursorline
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" Autocommand, reloading .vimrc after editing.
au! BufWritePost .vimrc source %

colorscheme twilight-nbartlomiej
