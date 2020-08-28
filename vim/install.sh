#!/usr/bin/env bash
mkdir -p ~/.vim/bundle
cd ~/.vim/bundle/ && git clone git://github.com/majutsushi/tagbar ; cd -
cp ./vimrc ~/.vimrc
echo "call pathogen#infect() " >> ~/.vimrc
echo "call pathogen#helptags()" >> ~/.vimrc
mkdir -p ~/.vim/autoload
cp ./pathogen.vim ~/.vim/autoload
