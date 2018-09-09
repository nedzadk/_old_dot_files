" Simple Vim configuration file for Javascript, Ruby development
" Nedzad Kulelija - 2018
set nocompatible

" Load Vim Plug 
call plug#begin('~/.vim/plugged')
" ... plugins ... 

" Sensible plugin from Tpope 
Plug 'tpope/vim-sensible'
" Fuzzy finde for Vim ( requirements macos: brew install fzf the_silver_searcher)
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 
Plug 'junegunn/fzf.vim'

"Colorscheme
Plug 'lifepillar/vim-solarized8'
" ... end of plugins ...
call plug#end()

" **************************
" General editor conf 
" **************************

" Map leader
let mapleader = ","

set number
set ruler
set encoding=utf-8
set t_Co=256
set tabstop=2
set shiftwidth=2
set softtabstop=2
set noeol
set autoindent
set colorcolumn=80
set wrap
set cursorline
set lbr
set noswapfile
set nobackup
set nowritebackup
set hlsearch
set incsearch
set ignorecase
set smartcase

" Colorscheme setup
set background=dark
colorscheme solarized8

syntax on 

" **************************
" End of general editor conf
" **************************


" **************************
" Fuzzy Finder configuration
" **************************

" Key mapping for fzf 
nmap <Leader>t :Files<CR>
nmap <Leader>b :Buffers<CR>

set rtp+=/usr/local/opt/fzf

let g:fzf_tags_command = 'ctags --extra=+f -R'
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" ***************************
" End of Fuzzy Finder config
" ***************************