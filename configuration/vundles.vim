set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Bundle 'majutsushi/tagbar'
Bundle 'Gundo'
Plugin 'scrooloose/syntastic'

" File Browsing
" More settings down.
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'


Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

Plugin 'joshdick/onedark.vim'

" Syntax highlight
Plugin 'sheerun/vim-polyglot'

" UI
Plugin 'itchyny/lightline.vim'

Bundle 'flazz/vim-colorschemes'
Bundle 'DirDiff.vim'

" Folding helper
Plugin 'tmhedberg/SimpylFold'

" Perforce
Bundle 'nfvs/vim-perforce'
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

" Python plugins
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" Indentation for python
Plugin 'vim-scripts/indentpython.vim'

Plugin 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

" Add all your plugins here (note older versions of Vundle used Bundle instead
" of Plugin)

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
