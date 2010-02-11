#! /usr/bin/env bash
cp ./vimrc ~/.vimrc
mkdir ~/.vim
for i in `ls`; do
    cp -R ./$i ~/.vim/
done
