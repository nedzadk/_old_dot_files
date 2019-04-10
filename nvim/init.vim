let mapleader = ","
call plug#begin()
"Javascript
Plug 'ternjs/tern_for_vim', { 'do': 'npm install -g tern' }
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Rails
Plug 'tpope/vim-rails'
"File navigation
Plug 'ctrlpvim/ctrlp.vim'
"CSS/LESS/SCSS
Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'
Plug 'cakebaker/scss-syntax.vim'
Plug 'groenewege/vim-less'
Plug 'othree/csscomplete.vim'
"Themes (Fancy Shit)
Plug 'joshdick/onedark.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'srcery-colors/srcery-vim'
Plug 'kien/rainbow_parentheses.vim'
"Linter
Plug 'w0rp/ale'
"Misc things
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ggreer/the_silver_searcher'
Plug 'scrooloose/nerdtree'
"GuttenTags :) 
Plug 'ludovicchabant/vim-gutentags'
"MarkDown Preview and editing
function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    if has('nvim')
      !cargo build --release
    else
      !cargo build --release --no-default-features --features json-rpc
    endif
  endif
endfunction

Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }
"Fzf
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
call plug#end()
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Fancy shit configuration
syntax enable
set termguicolors
let g:onedark_terminal_italics=1
let g:srcery_italic = 1
set background=dark
colorscheme onedark

"Basic shit
set cursorline
set colorcolumn=100
nnoremap <CR> :noh<CR><CR>
set nu relativenumber
let g:jsx_ext_required = 0
set noerrorbells
let g:deoplete#enable_at_startup = 1

" CtrlP configuration
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_show_hidden = 1

" Indendation
set breakindent
set autoindent
set tabstop=2 shiftwidth=2 expandtab softtabstop=2

" Linter config
let g:ale_fixers = {
      \ 'javascript': ['prettier_standard']
      \}
let g:ale_sign_error = ''
let g:ale_sign_warning = ''
let g:ale_fix_on_save = 1

"Snippets config
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

"NERDTree Config
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <Leader>f :NERDTreeToggle<Enter>
nmap <silent><Leader>v :NERDTreeFind<CR>
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeDirArrows = 1
let NERDTreeMinimalUI = 1

" Moving around panes using CTRL + vim movement keys
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Turn off backups
set nowritebackup
set noswapfile
set nobackup

"Airline config 
let g:airline_theme = 'onedark'
let g:airline#extensions#tabline#enabled = 1

"Additional configurations
"
"Trim whitepasce on end of the line
autocmd BufWritePre *.js,*.jsx,*.rb :%s/ \+$//ge

"Buffer navigation
set hidden
nnoremap <C-H> :bnext<CR>
nnoremap <C-L> :bprev<CR>
nnoremap <C-D><C-D> :bd<CR>
