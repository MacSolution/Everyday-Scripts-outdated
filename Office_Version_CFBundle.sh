#!/bin/zsh

## By Lucas Almeida, from MacSolution. April 15th 2020.
## By Lucas Almeida - https://github.com/LucasAlmeida-MS

#This script return Office's version, using the CFBundleVersion information in Info.plist

VERSION=$(defaults read /Applications/Microsoft\ Excel.app/Contents/Info.plist CFBundleVersion)

if [ -e /Applications/Microsoft\ Excel.app ]; then 
    echo "$VERSION"
else
    echo "Not Found"
fi

