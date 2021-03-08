"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/
"
" version 1.0.0
"

let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')
let curl_exists=expand('curl')

if !filereadable(vimplug_exists)
  if !executable(curl_exists)
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent exec "!"curl_exists" -fLo " . shellescape(vimplug_exists) . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall --sync
endif

" Initialize plugin system
"
call plug#begin(expand('~/.config/nvim/plugged'))
	source $HOME/.config/nvim/infra.vim
	source $HOME/.config/nvim/ux.vim	

	source $HOME/.config/nvim/modules/gomod.vim
	source $HOME/.config/nvim/modules/goux.vim

call plug#end()


" CONFIGURE theme gruvbox
colorscheme gruvbox

function! Light()
    echom "set bg=light"
    set bg=light
    "colorscheme off
    set list
endfunction

function! Dark()
    echom "set bg=dark"
    set bg=dark
    colorscheme gruvbox
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
