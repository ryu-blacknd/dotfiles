#!/bin/sh

DOT_FILES=( .dir_colors .fonts .tmux.conf .vim .vimrc )

for file in ${DOT_FILES[@]}
do
    ln -dis $HOME/dotfiles/$file $HOME/$file
done
