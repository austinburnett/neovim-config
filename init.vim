" Vim-Plug-Begin
call plug#begin('~/.config/nvim/autoload/plugged')

" Theme
Plug 'morhetz/gruvbox'

" Startup to show recent files
Plug 'mhinz/vim-startify'

" File explorer
Plug 'preservim/nerdtree'

" Tabline/Status improvement
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Shows lines that have been added/removed in git
Plug 'airblade/vim-gitgutter'

" Syntax checker
Plug 'vim-syntastic/syntastic'

" Git integration
Plug 'tpope/vim-fugitive'

" Auto pairs
Plug 'jiangmiao/auto-pairs'

" Syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Vim-Plug-End
call plug#end()

" Vim Options go below here
"=============================

" VIM INDENTATION
set mouse=a
set number
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab
filetype plugin indent on

" COLOR SCHEMES
set background=dark
colorscheme gruvbox
let g:airline_theme='tomorrow'

" NAVIGATING MULTIPLE PANES
" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

syntax on
