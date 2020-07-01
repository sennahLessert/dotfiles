call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-scripts/L9'
Plug 'vim-scripts/tComment'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'icymind/NeoSolarized'
Plug 'Shougo/deoplete.nvim'
Plug 'scrooloose/nerdcommenter'
Plug 'qpkorr/vim-bufkill'
Plug 'w0rp/ale'
Plug 'Raimondi/delimitMate'
Plug 'ap/vim-css-color'

call plug#end()

let mapleader=","
set termguicolors
"colorscheme NeoSolarized
colorscheme zenburn

set number

" indent
set autoindent
set smartindent

set tabstop=4
set shiftwidth=4
set expandtab
filetype plugin indent on
syntax enable

let b:ale_linters = {'javascript': ['eslint'], 'java': ['checkstyle'], 'python': ['flake8', 'pylint']}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'python': ['autopep8', 'yapf'],
\}
let g:ale_lint_on_enter = 1
let g:ale_javascript_eslint_use_global = 1

nnoremap <leader>f :Files .<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>h :History<cr>

"call neomake#configure#automake('rw', 1000)
"autocmd InsertChange,TextChanged * update | Neomake
nnoremap <F2> :lopen<cr>
nnoremap <F3> :lclose<cr>

let g:deoplete#enable_at_startup = 1

nnoremap <tab> :bn<cr>
nnoremap <s-tab> :bp<cr>
nnoremap <F5> :edit<cr>

set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

"split
nnoremap <leader>/ :vsplit<cr>
nnoremap <leader>- :split<cr>

" case insensitiv search
set ignorecase
set smartcase

"disable swap files
set noswapfile

set backup
set backupdir=/tmp

let g:ale_warn_about_trailing_whitespace = 1

nnoremap <leader>+ :vertical resize +5<cr>
nnoremap <leader>- :vertical resize -5<cr>


set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set noswapfile     "no swap files

let g:delimitMate_expand_cr=1
let g:delimitMate_expand_space=1
