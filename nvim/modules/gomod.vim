"
" Installs Golang CoC plugin (language server, autocomplete, gopls)
"
call add(coc_global_extensions, 'coc-go')

"
" Installs Golang support for vim (syntax, build and debug)
"Plug 'jodosha/vim-godebug'
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries', 'for': 'go'}

" >> configuring vim-go > https://github.com/fatih/vim-go
" =====================================
"let gkgo_highlight_build_constraints = 1

let g:go_test_show_name = 1
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_fmt_autosave=1
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_auto_sameids = 1          " highlight matching identifiers
let g:go_def_mapping_enabled = 0   " coc.vim will do `gd`
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_structs = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_space_tab_error = 0
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_extra_types = 1

""""-----------------------------------------
" ale
let g:airline#extensions#ale#enabled = 1
let g:ale_linters = {
\   'go': ['gofmt', 'golint'],
\   'markdown': ['markdownlint'],
\ }
let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ 'markdown': ['prettier'],
\ }
let g:ale_fix_on_save = 1

" Error and warning signs.
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
