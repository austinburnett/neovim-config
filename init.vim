"Vim-Plug-Begin
call plug#begin('~/.config/nvim/autoload/plugged')

"Theme
Plug 'morhetz/gruvbox'

"Startup to show recent files
Plug 'mhinz/vim-startify'

"Vim-Plug-End
call plug#end()

"Vim Options go below here
set mouse=a
set number
colorscheme gruvbox

