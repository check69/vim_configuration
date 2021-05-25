" Ctrlp configuration
"------------------------------------------------------------------------------
map <Leader>b :CtrlPBuffer<CR>
map <Leader>w :CtrlPMixer<CR>

" Vim-Airline configuration
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" Enable the list of buffers
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"


let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

"Toggle Configuration
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
map <F4> :TagbarToggle<CR>
nnoremap <Leader>u :GundoToggle<CR>

" Tabs configuration to show upwindow
"------------------------------------------------------------------------------
" While VIM can do tabs, many users prefer buffers and splits.
" You can think of a buffer as a recently opened file.
" VIM provides easy access to recent buffers.
" Just type :b <buffer name or number> to switch to an open buffer.
" (Auto-complete works here as well.) You can also use :ls to list all buffers.
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>
