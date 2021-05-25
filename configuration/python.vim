au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=100 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

let python_highlight_all=1

" Lintern for python
"------------------------------------------------------------------------------
let b:ale_linters = ['flake8', 'pylint']
let g:ale_emit_conflict_warnings = 0
"------------------------------------------------------------------------------

"Autocomplete for python
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


