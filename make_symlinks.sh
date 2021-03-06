#!/bin/bash

test -f ../.zshrc || ln -sv .dotfiles/zshrc ../.zshrc
test -f ../.zsh_functions || ln -sv .dotfiles/zsh_functions ../.zsh_functions
test -f ../.vimrc || ln -sv .dotfiles/vimrc ../.vimrc
test -f ../.gitconfig || ln -sv .dotfiles/gitconfig ../.gitconfig
test -f ../.globalgitignore || ln -sv .dotfiles/globalgitignore ../.globalgitignore
if ! test -f ../.config/nvim/init.vim
then
    mkdir -vp ../.config/nvim
    ln -sv ~/.vimrc ../.config/nvim/init.vim
fi
