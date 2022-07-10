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

" Linter
Plug 'dense-analysis/ale'

" Fzf
Plug 'nvim-telescope/telescope.nvim'
Plug 'BurntSushi/ripgrep'
Plug 'sharkdp/fd'
Plug 'nvim-lua/plenary.nvim'

" Autocomplete (Language Server)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Vim-Plug-End
call plug#end()

" Vim settings go below here
"=============================

" VIM OPTIONS
set mouse=a
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set scrolloff=8
set autoindent
set expandtab
set ignorecase
set smartcase
set hlsearch
filetype plugin indent on
syntax on
let mapleader = ' '

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

" TELESCOPE KEYMAPS
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" COC.VIM KEYMAPS
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" PLACE LUA SCRIPT HERE
"=============================
lua << EOF
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true
    }

}
EOF
