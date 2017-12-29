#!/bin/bash

trap "tput reset; tput cnorm; exit" 2
clear

tput civis

line=2
middle_column=$(($(tput cols) / 2))
middle_column=$((middle_column-1))
color=0

new_year=$(date +'%Y')
let new_year++

while true; do
    randomValue=$((RANDOM % 10 + 1))
    fromMiddle=$((middle_column-randomValue))
    column=$((RANDOM % (randomValue) * 2 + 1 + fromMiddle))
    tput setaf $color; tput bold

    tput cup 1 $column
    echo '******'

    color=$(((color+1)%8))

    fromMiddle=-2 # from left column
    for l in H A P P Y
    do
        tput cup $((line+1)) $((middle_column+fromMiddle))
        echo $l
        let fromMiddle++
        sleep 0.01
    done

    fromMiddle=-1
    for l in N E W
    do
        tput cup $((line+2)) $((middle_column+fromMiddle))
        echo $l
        let fromMiddle++
        sleep 0.01
    done

    fromMiddle=0
    for l in Y E A R
    do
        tput cup $((line+3)) $((middle_column+fromMiddle))
        echo $l
        let fromMiddle++
        sleep 0.01
    done

    tput cup $((line+4))
    toilet '    '$new_year --gay

    tput setaf $color; tput bold

    tput cup 14 $column
    echo '******'
done
