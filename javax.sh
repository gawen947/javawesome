#!/usr/bin/env zsh

export DISPLAY=":0.0"
num=`echo $DISPLAY | awk -F "" '{print $2}'`
screen=`echo $DISPLAY | awk -F "" '{print $4}'` 
new_num=`expr $num + 1`
(Xephyr -ac ":$new_num" &> /dev/null) &
sleep 0.1s
export DISPLAY=":$new_num.$screen"
($1 &> /dev/null) &
export DISPLAY=":$num.$screen"