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
Bundle 'kana/vim-arpeggio'


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

" Mapping leader to space.
let mapleader = " "

map <Leader>q :q<CR>
map <Leader>a :wa<CR>
map <Leader>w :w<CR>

" Jumping to next window with Leader.
map <Leader>h h
map <Leader>j j
map <Leader>k k
map <Leader>l l

" Browsing tabs with Leader.
map <Leader>n gt
map <Leader>p gT

" Convert:
"   method(one, two, three)
"
" Into:
"   method(
"     one, two, three
"   )
map <Leader>f12 ci(O"

" Convert:
"   method(one, two, three)
"
" Into:
"   method(
"     one,
"     two,
"     three
"   )
map <Leader>f13 <Leader>f12:s/, /,\r/g=i(

map <Leader>o ok
map <Leader>O Oj

map <Leader>vc :colorscheme twilight-nbartlomiej

map <Leader>vn :noh<CR>

inoremap <C-C> Don't use C-C
vnoremap <C-C> Don't use C-C
nnoremap <C-C> g

" Ensure that Arpeggio plugin is loaded.
call arpeggio#load()

" Use (jk) as Escape.
Arpeggio  noremap jk <Esc>
Arpeggio inoremap jk <Esc>l
Arpeggio cnoremap jk <C-C>

" Don't hit same key twice, hit two keys at once.
Arpeggio noremap ds dd
Arpeggio noremap gf gg

Arpeggio noremap oi o<Esc>k
Arpeggio noremap op O<Esc>j

colorscheme twilight-nbartlomiej
