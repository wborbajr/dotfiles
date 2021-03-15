"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/
"
" version 1.0.0
"
" REFs
" https://github.com/carlosd-ss/dotfiles
" https://gist.github.com/benawad/b768f5a5bbd92c8baabd363b7e79786f
" https://www.youtube.com/watch?v=gnupOrSEikQ
" https://github.com/alexandreliberato/vim-modular


source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/keymap.vim  
source $HOME/.config/nvim/modules/vimgo.vim
source $HOME/.config/nvim/modules/nerdtree.vim
source $HOME/.config/nvim/modules/airline.vim
source $HOME/.config/nvim/modules/fzf.vim
"source $HOME/.config/nvim/modules/commentary.vim
source $HOME/.config/nvim/modules/coc.vim
source $HOME/.config/nvim/modules/linter.vim


" CONFIGURE theme gruvbox



function! Light()
    echom "set bg=light"
    set background=light
    "colorscheme off
    set list
endfunction

function! Dark()
    echom "set bg=dark"

    colorscheme gruvbox
    set background=dark
    let g:gruvbox_contrast_dark='hard'
    let g:gruvbox_bold=1
    let g:gruvbox_italic=1
    let g:gruvbox_italicize_comments=1
    let g:gruvbox_invert_tabline=1
    let g:gruvbox_invert_indent_guides=1

    "darcula fix to hide the indents:
    "set nolist
endfunction

function! ToggleLightDark()
  if &bg ==# "light"
    call Dark()
  else
    call Light()
  endif
endfunction

" toggle colors to optimize based on light or dark background
nnoremap <leader>c :call ToggleLightDark()<CR>


" =====================================
" Init
" =====================================
silent call Dark()
autocmd VimEnter * wincmd p
