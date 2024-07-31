#!/bin/bash
#
# Tested on Ubuntu 20.04
#
# Dependencies:
# sudo apt install clang-format
#

D_WS="$HOME/catkin_ws/"
WS="${1:-$D_WS}"

# $1: input string to replace
# $2: output string to be replaced with
# $3: file in which $1 will be replaced with $2
function replace () {
    echo "Replacing '$1' with '$2' in $3"
    sleep 1
    sed -i "s|$1|$2|" .vscode/$3
}

# Read relative path
read -p "Enter the path of your catkin workspace, relative to your VSCode workspace: " rel_path

# Replace the path in the configuration files
INP_STR="\${workspaceFolder}/"
out_str=$INP_STR$rel_path
replace $INP_STR $out_str "settings.json"
replace $INP_STR $out_str "c_cpp_properties.json"

# VS Code extensions needed
code --install-extension xaver.clang-format
code --install-extension davidanson.vscode-markdownlint

# Configure the editor and the formatting settings
cp -r ./.vscode/ $WS
cp .clang-format $WS

# Restore the old state of files to avoid messing up the repo
replace $out_str $INP_STR "settings.json"
replace $out_str $INP_STR "c_cpp_properties.json"
