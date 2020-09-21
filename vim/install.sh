#!/usr/bin/env bash
script_dir="$(dirname "$0")"
mkdir -p ~/.vim/bundle
rm -rf ~/.vim/bundle/tagbar
cd ~/.vim/bundle/ && git clone git://github.com/majutsushi/tagbar ; cd -

cp ${script_dir}/vimrc ~/.vimrc
echo "call pathogen#infect() " >> ~/.vimrc
echo "call pathogen#helptags()" >> ~/.vimrc
mkdir -p ~/.vim/autoload
cp ${script_dir}/pathogen.vim ~/.vim/autoload
echo "Done"  
