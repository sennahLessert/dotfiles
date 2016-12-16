" show line numbers
set number

" allow syntax highlighting
syntax on

" don't make  vim compatible to vi
set nocompatible

" reload files that are changed outside of vim
set autoread

" Load filetype specific plugins
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on
" filetype off
let g:molokai_original = 1

" =============
" == Plugins ==
" =============

set rtp+=~/.config/vim/bundle/Vundle.vim
call vundle#rc('~/.config/vim/bundle/')
call vundle#begin()

" let vundle manage vundle, required!
Plugin 'gmarik/Vundle.vim'

" -> Vundle load the following plugins...
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-surround.git'
Plugin 'mattn/emmet-vim'
Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/FuzzyFinder.git'
Plugin 'vim-scripts/tComment'
Plugin 'wikitopian/hardmode'
Plugin 'maksimr/vim-jsbeautify'

call vundle#end()

" lightline configuration
let g:lightline = {
\ 'colorscheme': 'jellybeans',
\ }

set laststatus=2

" JSLINT
let jshint2_read = 1
let jshint2_confirm = 0

" keymapping
let mapleader = ","
noremap <leader>b :FufBuffer<cr>
noremap <leader>f :FufFile<cr>
noremap <leader>n :NERDTreeToggle<cr>

if !has('gui_running')
  set t_Co=256
endif

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" disable bracket highlighting
set noshowmatch
