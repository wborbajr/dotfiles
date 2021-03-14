
" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=1

" dont show message: Please wait caching large directory
let g:NERDTreeNotificationThreshold = 500

let g:NERDTreeGitStatusWithFlags = 1

let g:NERDTreeIgnore = ['^node_modules$']


" Auto start NERD tree if no files are specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | exe 'NERDTree' | endif

" Let quit work as expected if after entering :q the only window left open is NERD Tree it
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) 

" Toggle NERDTree
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" select file in NERDTree
nnoremap <silent> <leader>nf :NERDTreeFind<CR>

