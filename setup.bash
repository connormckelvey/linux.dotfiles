#!/usr/bin/env bash

dotfiles_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
config_dir="$HOME/.config"

# Symlink $HOME/* dotfiles
cd $HOME && rm -rf .bashrc && ln -s linux.dotfiles/.bashrc .bashrc
cd $HOME && rm -rf .profile && ln -s linux.dotfiles/.profile
cd $HOME && rm -rf .Xresources && ln -s linux.dotfiles/.Xresources .Xresources
cd $HOME && rm -rf bin && ln -s linux.dotfiles/bin bin
# End Symlink $HOME/* dotfiles


# Symlink .config dotfiles
for dir in $dotfiles_dir/.config/*; do
	if [[ "$dir" != *.ignore ]]; then
		name=$(basename $dir)
		cd $HOME/.config && rm -rf $name && ln -s $dir $name
	fi
done
