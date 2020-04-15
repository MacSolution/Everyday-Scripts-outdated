#!/bin/zsh

## By Lucas Almeida, from MacSolution. April 15th 2020.
## By Lucas Almeida - https://github.com/LucasAlmeida-MS

#This script return Office's version, using the kMDItemVersion information from app.

VERSION=$(mdls -name kMDItemVersion /Applications/Microsoft\ Excel.app | awk '{print $3}' | sed 's/"//g')

if [ -e /Applications/Microsoft\ Excel.app ]; then 
    echo "$VERSION"
else
    echo "Not Found"
fi