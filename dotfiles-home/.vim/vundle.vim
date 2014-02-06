" Vundle config.
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
filetype plugin indent on

" Let Vundle manage Vundle (required).
Bundle 'gmarik/vundle'

" Vundler Bundles:
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-sleuth'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'jnurmine/Zenburn'

Bundle 'godlygeek/tabular'
Bundle 'kana/vim-arpeggio'
Bundle 'kchmck/vim-coffee-script'
