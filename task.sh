#!/bin/bash


### Check if a directory does not exist ###
if [ ! -d "$HOME/Yoti" ]
then
    mkdir $HOME/Yoti
fi

touch $HOME/Yoti/YotiTest.txt

mem=`cat /proc/meminfo | grep MemAvailable | cut -d " " -f 4`


output=$(date +%T && echo $0 && ls $PWD && ip -4 addr | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | tail -n1 && echo $mem / 1024 | bc &&  echo $$  &&  whoami)



echo $output >> $HOME/Yoti/YotiTest.txt
