#!/bin/sh

DOT_FILES=( .dir_colors .fonts .screenrc .tmux.conf .vim .vimrc)

for file in ${DOT_FILES[@]}
do
  if [ -a $HOME/$file ]; then
    echo "File already exists: $file"
  else
    ln -s $HOME/dotfiles/$file $HOME/$file
  fi
done
