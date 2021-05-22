syntax on

set number
set numberwidth=1
set rnu
set tabstop=2
set encoding=utf-8
set mouse&
set expandtab
set shiftwidth=2
set smartindent
set noshowmode
set cursorline
set mouse=a
set colorcolumn=81
set clipboard=unnamedplus
set updatetime=100

let g:mapleader = ','

nnoremap <leader>q :q<CR>
nnoremap <leader>qq :q!<CR>

map <C-b> :NERDTreeToggle<CR>
map <C-n> :NERDTreeCWD<CR>ma
map <C-s> :w<CR>
map <C-g> :w<CR>:so %<CR>

call plug#begin()

Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'thaerkh/vim-indentguides'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'arcticicestudio/nord-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
Plug 'mhinz/vim-startify'
Plug 'editorconfig/editorconfig-vim'

call plug#end()

inoremap ( ()<Esc>i
inoremap (<CR> (<CR>)<Esc>O
inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>O
noremap [ []<Esc>i
inoremap [<CR> [<CR>]<Esc>O
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
autocmd BufNewFile,BufRead *.html inoremap < <><Esc>i

"Devicons
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:webdevicons_enable_startify = 1

"Dart
let g:lsc_auto_map = v:true
let g:dart_format_on_save = 1
let g:dart_style_guide = 2

"Nord
let g:nord_italic_comments = 1
let g:nord_italic = 1
let g:nord_underline = 1
colorscheme nord

"Coc
inoremap <silent><expr> <C-SPACE> coc#refresh()

"lightline
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'filename' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'Branch',
      \   'filename': 'LightlineFilename',
      \ },
      \ 'separator': {
      \   'left': '',
      \   'right': ''
      \ },
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ },
      \ }
function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
  let modified = &modified ? ' +' : ''
  return filename . modified
endfunction

function Branch()
  return !empty(FugitiveHead())? ' '.FugitiveHead() : FugitiveHead()
endfunction
