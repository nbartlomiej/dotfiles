" A .vimrc that serves me in daily tasks (@nbartlomiej).
"
" INSTALLATION:
"
"   (1) Download the Vundler plugin:
"       $ git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
"
"   (2) Run:
"       $ vim -u bundles.vim +BundleInstall +qa
"
" STRUCTURE:
"
" Vundle plugins are all listed in vundle.vim , to facilitate installation.
" For more details see:
"
" http://gmarik.info/blog/2011/05/17/chicken-or-egg-dilemma


" Explicitly informing that we're using 256-color terminals.
let &t_Co=256

" Include plugins via Vundle. For details see vundle.vim .
source ~/.vim/vundle.vim

" Default colorscheme
colorscheme zenburn

" Formatting
set tabstop=2
set shiftwidth=2
set softtabstop=4
set colorcolumn=80
set showmatch " Birefly jump to the matching brace on brace insert.
set expandtab
set smarttab
set hls
set number

" Sets how many lines of history VIM has to remember.
set history=1000

" Highlighting the line with cursor.
set cursorline
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

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

map <Leader>c :cwindow<CR> " Open quickfix window if errors; close otherwise.

" Ensure that Arpeggio plugin is loaded.
call arpeggio#load()

" Use (jk) as Escape.
Arpeggio  noremap jk <Esc>
Arpeggio inoremap jk <Esc>
Arpeggio cnoremap jk <C-C>

" Don't hit same key twice, hit two keys at once.
Arpeggio noremap ds dd
Arpeggio noremap gf gg
Arpeggio noremap -= ==

" File actions.
Arpeggio noremap fw :w<CR>
Arpeggio noremap fq :q<CR>

" Add spacings.
Arpeggio noremap oi O<Esc>j
Arpeggio noremap op o<Esc>k

colorscheme twilight-nbartlomiej-terminal
