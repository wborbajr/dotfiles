let mapleader=" "

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set langmenu=en_US.UTF-8
language messages en_US
set nowrap
set nobackup
set nowritebackup
set noswapfile
set timeoutlen=100
syntax enable
set showcmd
set showmatch
set history=200
set ttyfast
set background=dark cursorline termguicolors
set cursorline
set scrolloff=9

set backspace=indent,eol,start

set tabstop=3
set softtabstop=0
set shiftwidth=3
set expandtab

set hlsearch
set incsearch
set ignorecase
set smartcase
set nohlsearch

set fileformats=unix,dos,mac

if exists('$SHELL')
  set shell=$SHELL
else
  set shell=/bin/sh
endif

" session management
let g:session_directory = "~/.config/nvim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

" For things that are mark down or set turn on spelling
autocmd FileType md,markdown,txt setlocal spell spelllang=en_us
" Do the same for git commits
autocmd BufRead COMMIT_EDITMSG setlocal spell spelllang=en_us
" Create your own private dictionary
set spell spelllang=en_us
set spell

syntax on
set ruler
set number
set relativenumber

let no_buffers_menu=1
colorscheme gruvbox
highlight Normal guibg=none

set mousemodel=popup
set t_Co=256
set guioptions=egmrti

if has("gui_running")
  if has("gui_mac") || has("gui_macvim")
    set guifont=Fira\ Code:h14
    set transparency=7
  endif
else
  let g:CSApprox_loaded = 1

  " IndentLine
  let g:indentLine_enabled = 1
  let g:indentLine_concealcursor = 0
  let g:indentLine_char = '┆'
  let g:indentLine_faster = 1

endif

"" Disable the blinking cursor.
set gcr=a:blinkon0

au TermEnter * setlocal scrolloff=0
au TermLeave * setlocal scrolloff=3

"" Status bar
set laststatus=2

"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif

" Always show tabs
set showtabline=2
" We don't need to see things like -- INSERT -- anymore
set noshowmode
