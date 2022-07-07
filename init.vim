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

" Fuzzy finder file search
Plug 'kien/ctrlp.vim'

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

" Color schemes
set background=dark
colorscheme gruvbox
let g:airline_theme='tomorrow'

" File search find dotfiles
let g:ctrlp_show_hidden = 1

syntax on
