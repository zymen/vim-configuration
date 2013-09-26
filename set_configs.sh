#!/bin/bash

rm ~/.vimrc
rm ~/.vim
result=$PWD
ln -s ${result}/.vimrc ~/.vimrc
ln -s ${result}/.vim ~/.vim
