#!/bin/bash

DOT_FILES=( .gitconfig .gitignore .vimrc .gemrc )

for file in ${DOT_FILES[@]}
do
    if [ -e $HOME/$file ]; then
        rm -rdf $HOME/$file
        echo "$file を削除しました。"
    fi
    ln -s $HOME/dotfiles2/$file $HOME/$file
done

[ ! -d ~/.vim/bundle ] && mkdir -p ~/.vim/bundle && git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim && echo "you should run following command to setup plugins ->  vim -c ':NeoBundleInstall'"
