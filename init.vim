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

let g:mapleader = ','

nnoremap <leader>s :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader><F5> :so %<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'dracula/vim',{'name':'dracula'}
Plug 'nathanaelkane/vim-indent-guides'

call plug#end()

inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>O
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i

"dracula
color dracula

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1

"devicons
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1

"Indent guide
let g:indent_guides_enable_on_vim_startup = 1
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
q
    q
        q

