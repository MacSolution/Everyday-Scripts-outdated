#!/bin/zsh

checkSSD=$(diskutil info disk0 | grep "Solid State" | awk '{ print $3" " }')
if [ $checkSSD = "Yes" ]; then
  echo "SSD"
  exit 0
else
  echo "HDD"
  exit 0
fi