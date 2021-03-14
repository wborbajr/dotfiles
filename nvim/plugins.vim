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
		
	" status bar
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" fuzzy search
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	
	" Commentary
	"Plug 'tpope/vim-commentary'

	" Startify
	Plug 'mhinz/vim-startify'

	" Linter
	Plug 'dense-analysis/ale'

	" Themes
	Plug 'morhetz/gruvbox' "My favorite theme
	Plug 'sainnhe/gruvbox-material'
	Plug 'sonph/onehalf', { 'rtp': 'vim' }

	" fuzzy find files
	Plug 'ctrlpvim/ctrlp.vim' 

	" NERD Tree
	Plug 'scrooloose/nerdcommenter'
	Plug 'preservim/nerdtree' |
	  \ Plug 'Xuyuanp/nerdtree-git-plugin' |
	  \ Plug 'ryanoasis/vim-devicons' |
	  \ Plug 'tiagofumo/vim-nerdtree-syntax-highlight' |
		Plug 'airblade/vim-gitgutter'

	" Languages Support Plugin
	"Plug 'neoclide/coc.nvim', {'branch': 'release'}

	" Installs Golang support for vim (syntax, build and debug)
	"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
	Plug 'fatih/vim-go', { 'tag': '*' }
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


