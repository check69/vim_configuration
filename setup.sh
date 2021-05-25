#!/bin/bash

ln -s configuration/.vimrc ../

git clone "https://github.com/VundleVim/Vundle.vim.git" ~/.vim/bundle/Vundle.vim
mkdir ~/.vim/.undodir
vim -c "PluginInstall" -c q -c q -c q ~/.vimrc
