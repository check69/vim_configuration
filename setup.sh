#!/bin/bash

git clone "https://github.com/VundleVim/Vundle.vim.git" ~/.vim/bundle/Vundle.vim
mkdir ~/.vim/.undodir
cd ..
ln -s .vim/configuration/.vimrc
vim -c "PluginInstall" -c q -c q -c q ~/.vimrc
