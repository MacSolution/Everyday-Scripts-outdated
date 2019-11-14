#!/bin/zsh

## By Lucas Almeida, from MacSolution. November 14th 2019.
## By Lucas Almeida - https://github.com/LucasAlmeida-MS

#Script that connects the client to a remote server by inputting the server url int the server variable on the script, as well as the protocol name. It pops-up the current user with a window asking for his username and password, and connecting afterwards.

server="[IP/HOST]/[PATH]"
protocol="[PROTOCOL_CHANGE]"

userName="$(/usr/bin/osascript -e 'Tell application "Finder" to display dialog "Please enter your USER NAME in order to connect to server:" default answer "username" with title "Server Connection" with text buttons {"Ok"} default button 1 ' -e 'text returned of result')"

userPassword="$(/usr/bin/osascript -e 'Tell application "Finder" to display dialog "Please enter your USER PASSWORD in order to connect to server:" default answer "password" with title "Server Connection" with hidden answer with text buttons {"Ok"} default button 1 ' -e 'text returned of result')"

open "${protocol}://${userName}:${userPassword}@${server}"

unset server
unset userName
unset userPassword

/usr/bin/osascript -e 'Tell application "Finder" to display dialog "Connected!" with title "Server Connection" with hidden answer with text buttons {"Ok"} default button 1 '