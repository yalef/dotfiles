#!/bin/bash
current=$(pwd)
if [ $current = $HOME/.config ]
then
    echo WARNING dont run in .config/
    exit
else
    echo OK
fi

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

sudo ln $HOME/.config/.tmux.conf $HOME/.tmux.conf

chmod +x $HOME/.config/nvim/pluginst.sh
sh $HOME/.config/nvim/pluginst.sh
