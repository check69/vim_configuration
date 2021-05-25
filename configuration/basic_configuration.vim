" Basic configuration
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
"------------------------------------------------------------------------------
" Most “modern” IDEs provide a way to collapse (or fold) methods and classes.
" Plugin 'tmhedberg/SimpylFold' this plugin add more functionality
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

let g:SimpylFold_docstring_preview=1

set autoread
set backspace=indent,eol,start
set lcs=trail:·,tab:>>,nbsp:·
set softtabstop=2
set tabstop=8
set autoindent
set shiftwidth=2
set smarttab
set smartindent
set expandtab
set list
set number
set laststatus=2
set notextmode
set ignorecase
set smartcase
set encoding=utf-8

" Highlight search results
set hlsearch
map <F3> :set invhlsearch<CR>
map <F2> :noh<CR>

" C-s to save
:nmap <C-s> :update<CR>
:imap <C-s> <Esc>:update<CR>

"Scroll the tabs
map <F5> :tabp<CR>
map <F6> :tabn<CR>
map <F12> :%s/\\n/\r/g<CR>

nnoremap <Leader>f :grep -r <cword> <CR>

"Mouse support
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

""There is an awesome script that loads some cscope mappings. Source it here
if !empty(glob("~/.vim/cscope_maps.vim"))
     source ~/.vim/cscope_maps.vim
 endif

" Man pages in Vim!
runtime! ftplugin/man.vim
set tags=./tags; "Recursively look for tags

"Commonly used tags: stl, libc...
set tags+=$HOME/.vim/cpp_tags
set tags+=$HOME/.vim/asio_tags
set path=.,,,** "Path is buffer path, current path (<**> means recursive)

" NerdTree configuration
map <F6> :NERDTreeFind<CR>

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
" Encoding to utf-8 and NERDTree to use + and - instead of fancy arrows
let g:NERDTreeDirArrows=0

" Pathogen pluggin
 execute pathogen#infect()

" Persistent undo
try
    set undodir=$HOME/.vim/.undodir
    set undofile
    set undolevels=500
catch
endtry

" Change register by default while copy
" We have to check if we have the correct version
" vim --version | grep clipboard
" http://vim.wikia.com/wiki/Accessing_the_system_clipboard
" Section Checking for X11-clipboard support in terminal
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"if you have x11 use unnamedplus instead
set clipboard=unnamedplus

"Change register when delete
nnoremap x "-x
nnoremap X "-X
nnoremap d "-d
nnoremap D "-D
vnoremap d "-d

"Paste register - when push - key before paste
nnoremap -p "-p
nnoremap -P "-P
syntax on

call togglebg#map("<F5>")

" Remove trailing spaces on save file
autocmd FileType * autocmd BufWritePre <buffer> :%s/\s\+$//e

source ~/.vim/configuration/colors.vim
