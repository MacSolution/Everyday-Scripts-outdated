#!/bin/zsh

## By Lucas Almeida, from MacSolution. April 15th 2020.
## By Lucas Almeida - https://github.com/LucasAlmeida-MS

#Script that return client location.

IP=$(curl -L -s --max-time 10 http://checkip.dyndns.org | egrep -o -m 1 '([[:digit:]]{1,3}\.){3}[[:digit:]]{1,3}')
location=$(curl -L -s --max-time 10 'http://ip-api.com/csv/?fields=country,city,lat,lon,/$IP')

echo "$location" | sed -e 's/\(,\)/\1 /g'