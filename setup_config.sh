#!/bin/bash

# Adding Config
mkdir -p .config
cp -r ~/.config/tmux .config/tmux
cp -r ~/.config/nvim .config/nvim

# Loading installed files
mkdir -p .local/share/
cp -r ~/.local/share/nvim .local/share/nvim
cp ~/.zshrc .
