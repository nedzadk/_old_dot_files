" Simple Vim configuration file for Javascript, Ruby development
" Nedzad Kulelija - 2018
set nocompatible

" Load Vim Plug 
call plug#begin('~/.vim/plugged')
" ... plugins ...  

" Sensible plugin from Tpope 
Plug 'tpope/vim-sensible' "Vim defaults
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary' "Comment out blocks of text gcc (gc - selected text)
Plug 'tpope/vim-surround' "Auto add matching parent.
Plug 'tpope/vim-fugitive' "Git wrapper
Plug 'tpope/vim-dadbod' "Database interface
Plug 'tpope/vim-rails' "Vim rails 

" Fuzzy finde for Vim ( requirements macos: brew install fzf the_silver_searcher)
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 
Plug 'junegunn/fzf.vim'

" NERDTree plugin
Plug 'scrooloose/nerdtree'

" Deoplete
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

"Javascript Syntax
Plug 'sheerun/vim-polyglot'

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

"Airline status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Colorschemes
Plug 'lifepillar/vim-solarized8'
Plug 'morhetz/gruvbox'

" ... end of plugins ...
call plug#end()

" **************************
" General editor conf 
" **************************
" Map leader let mapleader = "," set number set ruler
set encoding=utf-8
set tabstop=2
set shiftwidth=2
set softtabstop=2
set noeol
set autoindent
set colorcolumn=80
set wrap
set number
" set cursorline
set lbr
set noswapfile
set nobackup
set nowritebackup
set hlsearch
set incsearch
set ignorecase
set smartcase

" Colorscheme setup
set termguicolors
set background=dark
colorscheme gruvbox

syntax on 

" **************************
" End of general editor conf
" **************************

" NERDTree configuration 
" Map to Ctrl-N
map <C-n> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1

" Deoplete config
let g:deoplete#enable_at_startup = 1

" **************************
" Fuzzy Finder configuration
" **************************

" Key mapping for fzf 
nmap <C-p> :GFiles<CR>
nmap <C-o> :Files<CR>
nmap <C-b> :Buffers<CR>
nmap \\ :Ag 

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
