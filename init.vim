"Vim-Plug-Begin
call plug#begin('~/.config/nvim/autoload/plugged')

"Theme
Plug 'morhetz/gruvbox'

"Startup to show recent files
Plug 'mhinz/vim-startify'

"File explorer
Plug 'preservim/nerdtree'

"Tabline/Status improvement
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Shows lines that have been added/removed in git
Plug 'airblade/vim-gitgutter'

"Syntax checker
Plug 'vim-syntastic/syntastic'

"Git integration
Plug 'tpope/vim-fugitive'

"Vim-Plug-End
call plug#end()

"Vim Options go below here
set mouse=a
set number
colorscheme gruvbox
let g:airline_theme='tomorrow'
