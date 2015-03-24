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
