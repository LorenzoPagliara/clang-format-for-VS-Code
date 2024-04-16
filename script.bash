#!/bin/bash
# 
# Tested on Ubuntu 20.04
#
# Dependencies:
# sudo apt install clang-format
#

D_WS="$HOME/catkin_ws/src/"
WS="${1:-$D_WS}"

# VS Code extensions needed
code --install-extension xaver.clang-format
code --install-extension davidanson.vscode-markdownlint

# Configure the editor and the formatting settings
cp -r ./.vscode/ $WS
cp .clang-format $WS
