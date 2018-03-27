call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-scripts/L9'
Plug 'vim-scripts/tComment'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'icymind/NeoSolarized'
Plug 'neomake/neomake'
Plug 'Shougo/deoplete.nvim'
Plug 'scrooloose/nerdcommenter'
Plug 'qpkorr/vim-bufkill'
call plug#end()

let mapleader=","
set termguicolors
colorscheme NeoSolarized

set number
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
filetype plugin indent on
syntax enable

"let g:neomake_javascript_jscs_maker = {
    "\ 'exe': 'eslint'
    "\ }
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_java_enabled_makers = []

nnoremap <leader>f :Files<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>h :History<cr>

call neomake#configure#automake('rw', 1000)
autocmd InsertChange,TextChanged * update | Neomake
nnoremap <F2> :lopen<cr>
nnoremap <F3> :lclose<cr>

let g:deoplete#enable_at_startup = 1

nnoremap <tab> :bn<cr>
nnoremap <F5> :edit<cr>
