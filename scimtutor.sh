#!/bin/bash

if ! [ -f progress.txt ]
then
    echo 0 > progress.txt
fi

if [ $# -eq 0 ]
then
    declare -i N=$(<progress.txt)
    if [ $N -gt 13 ]
    then
        echo 0 > progress.txt
    else
        echo $((N + 1)) > progress.txt
    fi
else
    declare -i N=$1
fi

if [ $N -lt 15 ]
then
    sc-im ./Lesson${N}_*.sc
fi
