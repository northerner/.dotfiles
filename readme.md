# Dotfiles

## Install
1. Install [stow](https://www.gnu.org/software/stow/)
2. Clone this repo into your home (~) directory
3. Install each set of dotfiles as required, for example: `stow bash`
4. Restart your terminal session

### zsh
The .zshrc file is not commited since it is created and managed by [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh).

These will likely change depending on host, but this theme and set of plugins are a good start.
'''
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(z asdf git rails systemd)
'''

## Solarized colorscheme
### Ubuntu
1. Clone the [Solarized Colorscheme for Gnome Terminal](https://github.com/Anthony25/gnome-terminal-colors-solarized) into your home or a temporary directory
2. Run the install.sh from the repo
### OSX iTerm
1. Download the colorscheme from [altercation/solarized](https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized)
2. Load the .itermcolors preset file from the preferences/profiles/colors menu
