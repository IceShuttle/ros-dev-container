#!/bin/bash

# Adding Config
mkdir -p ./to_copy/.config
cp -r ~/.config/tmux ./to_copy/.config/tmux
cp -r ~/.config/nvim ./to_copy/.config/nvim
cp -r ~/.tmux ./to_copy/.tmux/

# Loading installed files
mkdir -p ./to_copy/.local/share/
cp -r ~/.local/share/nvim ./to_copy/.local/share/nvim
cp ~/.zshrc ./to_copy/
