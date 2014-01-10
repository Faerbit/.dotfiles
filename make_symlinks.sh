#!/bin/bash

test -f ../.zshrc || ln -s .dotfiles/zshrc ../.zshrc
test -f ../.zsh_functions || ln -s .dotfiles/zsh_functions ../.zsh_functions
test -f ../.vimrc || ln -s .dotfiles/vimrc ../.vimrc
test -f ../.gitconfig || ln -s .dotfiles/gitconfig ../.gitconfig
test -f ../.globalgitignore || ln -s .dotfiles/globalgitignore ../.globalgitignore
