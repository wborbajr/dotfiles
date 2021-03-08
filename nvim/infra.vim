"
" Global Properties
"
let g:coc_global_extensions = ['coc-json', 'coc-git']

" 
" Utils
"

" file explorer
" show git status in NERD Tree

Plug 'scrooloose/nerdcommenter'
Plug 'preservim/nerdtree' |
  \ Plug 'Xuyuanp/nerdtree-git-plugin' |
  \ Plug 'ryanoasis/vim-devicons'

" Languages Support Plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}