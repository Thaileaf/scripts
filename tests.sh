#!/bin/bash

# Args: [./folder, exe name]

if [ -z "$1" ]
then
VAR1="."
else
VAR1=$1
fi

if [ -z "$2" ]
then
    echo "Require exe name"
    exit 0
else
    EXE="./"
    EXE+=$2
fi

VAR1+=/*.bin
for file in $VAR1;
do
    if [ "$file" == "$VAR1" ]
    then
        echo No files located;
        break;
    fi;
    echo "$file";
    # Press any key to continue:";
    # read -n 1
    # clear
    $EXE $file; 
    # echo "Press any key to continue:"
    # read -n 1
    # clear;
    done

