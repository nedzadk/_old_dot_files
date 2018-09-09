#!/bin/sh
echo Vim configuration setup tool 
echo ----------------------------
echo Symlinking vimrc 
ln -s $(pwd)/vimrc ~/.vimrc
echo ----------------------------
echo Install vim-plug 
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo **************************************
echo Requirements for Vim plugins
echo - brew install the_silver_searcher 
