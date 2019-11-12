#!/bin/zsh

## By Lucas Almeida, from MacSolution. November 12th 2019.
## Lucas Almeida GitHub - https://github.com/LucasAlmeida-MS

NameOfProfile="Name: Fortinet Whitelist"
Id=$(system_profiler SPConfigurationProfileDataType | grep -A 1 "Name: $NameOfProfile" | grep "Iden" | cut -d'.' -f9)
# Get the current user logged in computer.
current_user=$(stat -f "%Su" /dev/console)
# Create a list of strings
declare -a user_list=(
"user1"
"user2"
"user3"
)

# Check if the whitelist profile is already installed.
function check_whitelist () {
    if profiles -P | grep -q "$Id"; then
        echo "Whitelist enabled"
        check_user_list
    else
        echo "Whitelist not enabled"
        exit 1
    fi
}

# Check if one of the users in $user_list is equal to the current user. 
function check_user_list () {
    for user in ${user_list[@]}; do
        if [ "$user" == "$current_user" ]; then
            echo "Installing"
            exit 0
        else
            echo "NOPE"
        fi
    done
}

# Start check_whitelist function
check_whitelist

#################################################