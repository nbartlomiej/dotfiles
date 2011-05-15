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


set nocompatible               " be iMproved
filetype off                   " required!

" ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' '
" Vundler config
"
set rtp+=~/.vim/vundle.git/ 
call vundle#rc()

" ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' '
" Vundler Bundles:
"
" repositories on github
Bundle 'tpope/vim-fugitive'
Bundle 'godlygeek/csapprox'

filetype plugin indent on
syntax on

set ai "Auto indent
set si "Smart indet

set tabstop=2
set shiftwidth=2
set softtabstop=4

set showmatch " birefly jump to the matching brace on brace insert
set expandtab
set smarttab

set hls
set number

" Load matchit (% to bounce from do to end, etc.)
runtime! macros/matchit.vim

" mark trailing spaces, tabs
set list listchars=trail:.,extends:>

" Sets how many lines of history VIM has to remember
set history=1000

" highlighting the line with cursor
set cursorline
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline


" The Twilight-based colorscheme; 
"
" More on Vim's Twilight:
" http://www.vim.org/scripts/script.php?script_id=1677
"
" - - - - - - - - - - - - - - - - - - -

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "twilight"

let s:grey_blue = '#8a9597'
let s:light_grey_blue = '#a0a8b0'
let s:dark_grey_blue = '#34383c'
let s:mid_grey_blue = '#64686c'
let s:beige = '#ceb67f'
let s:light_orange = '#ebc471'
let s:yellow = '#e3d796'
let s:violet = '#a999ac'
let s:green = '#a2a96f'
let s:lightgreen = '#c2c98f'
let s:red = '#d08356'
let s:cyan = '#74dad9'
let s:darkgrey = '#1a1a1a'
let s:grey = '#303030'
let s:lightgrey = '#605958'
let s:white = '#fffedc'

if version >= 700
  hi CursorLine guibg=#262626
  hi CursorColumn guibg=#262626
  hi MatchParen guifg=white guibg=#80a090 gui=bold

  "Tabpages
  hi TabLine guifg=#a09998 guibg=#202020 gui=underline
  hi TabLineFill guifg=#a09998 guibg=#202020 gui=underline
  hi TabLineSel guifg=#a09998 guibg=#404850 gui=underline

  "P-Menu (auto-completion)
  hi Pmenu guifg=#605958 guibg=#303030 gui=underline
  hi PmenuSel guifg=#a09998 guibg=#404040 gui=underline
  "PmenuSbar
  "PmenuThumb
endif

hi Visual guibg=#404040

"hi Cursor guifg=NONE guibg=#586068
hi Cursor guibg=#b0d0f0


exe 'hi Normal         guifg='.s:white             .' guibg='.s:darkgrey
exe 'hi Underlined     guifg='.s:white             .' guibg='.s:darkgrey        .' gui=underline'
exe 'hi NonText        guifg='.s:lightgrey         .' guibg='.s:grey
exe 'hi SpecialKey     guifg='.s:grey              .' guibg='.s:darkgrey

exe 'hi LineNr         guifg='.s:mid_grey_blue     .' guibg='.s:dark_grey_blue  .' gui=none'
exe 'hi StatusLine     guifg='.s:white             .' guibg='.s:grey            .' gui=italic,underline'
exe 'hi StatusLineNC   guifg='.s:lightgrey         .' guibg='.s:grey            .' gui=italic,underline'
exe 'hi VertSplit      guifg='.s:grey              .' guibg='.s:grey            .' gui=none'

exe 'hi Folded         guifg='.s:grey_blue         .' guibg='.s:dark_grey_blue  .' gui=none'
exe 'hi FoldColumn     guifg='.s:grey_blue         .' guibg='.s:dark_grey_blue  .' gui=none'
exe 'hi SignColumn     guifg='.s:grey_blue         .' guibg='.s:dark_grey_blue  .' gui=none'

exe 'hi Comment        guifg='.s:mid_grey_blue     .' guibg='.s:darkgrey        .' gui=italic'
exe 'hi TODO           guifg='.s:grey_blue         .' guibg='.s:darkgrey        .' gui=italic,bold'

exe 'hi Title          guifg='.s:red               .' guibg='.s:darkgrey        .' gui=underline'

exe 'hi Constant       guifg='.s:red               .' guibg='.s:darkgrey        .' gui=none'
exe 'hi String         guifg='.s:green             .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Special        guifg='.s:lightgreen        .' guibg='.s:darkgrey        .' gui=none'

exe 'hi Identifier     guifg='.s:grey_blue         .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Statement      guifg='.s:beige             .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Conditional    guifg='.s:beige             .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Repeat         guifg='.s:beige             .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Structure      guifg='.s:beige             .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Function       guifg='.s:violet            .' guibg='.s:darkgrey        .' gui=none'

exe 'hi PreProc        guifg='.s:grey_blue         .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Operator       guifg='.s:light_orange      .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Type           guifg='.s:yellow            .' guibg='.s:darkgrey        .' gui=italic'
exe 'hi LineNr         guifg='.s:grey.' guibg='.s:dark_grey_blue

hi Search guifg=#606000 guibg=#c0c000 gui=bold

hi Directory guifg=#dad085 gui=NONE
hi Error guibg=#602020

"
" - - - - - - - - - - - - - - - - - - -
" colorscheme end!
"
