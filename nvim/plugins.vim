""""""""""""""""""""""VIM-PLUG""""""""""""""""""""
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

	" Color-schemes
	    Plug 'morhetz/gruvbox' "My favorite theme
	    Plug 'dracula/vim', { 'as': 'dracula' }
	    Plug 'sonph/onehalf', { 'rtp': 'vim' }
	Plug 'dense-analysis/ale'
	Plug 'scrooloose/nerdcommenter'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'mhinz/vim-startify'
	Plug 'sainnhe/gruvbox-material'
	Plug 'ekalinin/Dockerfile.vim'
	Plug 'preservim/nerdtree' |
	  \ Plug 'Xuyuanp/nerdtree-git-plugin' |
	  \ Plug 'ryanoasis/vim-devicons'
	Plug 'tpope/vim-commentary'
	Plug 'fatih/vim-go', {'do': ':GoInstallBinaries', 'for': 'go'}
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	if isdirectory('/usr/local/opt/fzf')
	  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
	else
	  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
	  Plug 'junegunn/fzf.vim'
	endif
	let g:make = 'gmake'
	if exists('make')
	        let g:make = 'make'
	endif

	"" Include user's extra bundle
	if filereadable(expand("~/.config/nvim/local_bundles.vim"))
	  source ~/.config/nvim/local_bundles.vim
	endif

call plug#end()
