#!/bin/bash
# 
# Tested on Ubuntu 20.04
#
# Dependencies:
# sudo apt install clang-format
#

# VS Code extensions needed
code --install-extension xaver.clang-format
code --install-extension davidanson.vscode-markdownlint

# Configure the editor and the formatting settings
cp -r ./.vscode/ ~/catkin_ws/src/
cp .clang-format ~/catkin_ws/src/