#!/bin/bash

CURRENT_DIR=$(pwd)

# create .config if it's not exist
if ! [ -d $HOME/.config/ ]; then
  mkdir $HOME/.config/
fi
 
# # move all content from current dir to config
mv * $HOME/.config/
cd $HOME/.config/

# rm repo dir
rm -rf "$CURRENT_DIR"
