syntax on

set number
set numberwidth=3
set rnu
set tabstop=4
set encoding=utf-8
set mouse&
set expandtab
set shiftwidth=4
set smartindent
set noshowmode
set cursorline
set mouse=a
set colorcolumn=80 

let g:mapleader = ','

nnoremap <leader>q :q<CR>
nnoremap <leader>qq :q!<CR>

map <C-b> :NERDTreeToggle<CR>
map <C-n> :NERDTreeToggle<CR>m<CR> 
map <C-s> :w<CR> :so %<CR>
map <C-h> :bprev<CR>
map <C-l> :bnext<CR>

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'thaerkh/vim-indentguides'
Plug 'mhinz/vim-signify'
Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
Plug 'dracula/vim', {'as':'dracula'}
Plug 'rakr/vim-one'
Plug 'tpope/vim-fugitive'

call plug#end()

inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>O
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i

"Dracula
"color dracula

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled=0

"devicons
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1

"Dart
let g:lsc_auto_map = v:true

"Vim one
let g:airline_theme='one'
colorscheme one
set background=dark 
