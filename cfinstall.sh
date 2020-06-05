#!/bin/bash

paths=$(ls -A)
echo $paths
for i in $paths
do
    rm -rf $HOME/.config/$i
done

for i in $paths
do
    mv $i $HOME/.config
done

#git clone --no-checkout https://github.com/yalef/dotfiles $HOME/.config/.config.tmp
#mv $HOME/.config/.config.tmp/.git $HOME/.config/
#cd $HOME/.config
#rmdir $HOME/.config/.config.tmp
#git reset --hard HEAD

#ln $HOME/.config/.tmux.conf $HOME/.tmux.conf

#chmod +x $HOME/.config/nvim/pluginst.sh
#sh $HOME/.config/nvim/pluginst.sh
