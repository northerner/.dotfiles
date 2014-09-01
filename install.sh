#!/usr/bin/env bash
DIR=~/.dotfiles

# copy .freshrc to ~
cp -vf ~/.dotfiles/.freshrc ~

# install fresh or run for re-fresh
if [[ -z `which fresh` ]]; then
  bash -c "`curl -sL get.freshshell.com`"
else
  fresh
fi

# gitconfig
if [ -e $HOME/.gitconfig ]
then echo ".gitconfig found, doing nothing"
else
  read -p "Name " name
  read -p "Email " email
  read -p "Github username " github

  # escape strings for sed
  name=$(printf "%s\n" "$name" | sed 's/[\&/]/\\&/g')
  email=$(printf "%s\n" "$email" | sed 's/[\&/]/\\&/g')
  github=$(printf "%s\n" "$github" | sed 's/[\&/]/\\&/g')
  home=$(printf "%s\n" "$HOME" | sed 's/[\&/]/\\&/g')

  # replace NAME, EMAIL, GITHUB, HOME
  sed "s/NAME/$name/g" $DIR/gitconfig | sed "s/EMAIL/$email/g" | sed "s/GITHUB/$github/g" | sed "s/HOME/$home/g" > $HOME/.gitconfig
  echo ".gitconfig installed"
fi
