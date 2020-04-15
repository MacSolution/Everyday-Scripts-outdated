#!/bin/zsh

## By Lucas Almeida, from MacSolution. April 15th 2020.
## By Lucas Almeida - https://github.com/LucasAlmeida-MS

# This script generate a new Filevault Personal Key, using admin's username and password for authentication. The file will be saved in "/var/db/ConfigurationProfiles/" and can be read by a custom fact.
# !! Please use with caution. !!

adminUser=[USERNAME]
adminPassword=[PASSWORD]

expect -c "
log_user 0
spawn fdesetup changerecovery -personal
expect \"Enter the user name:\"
send "${adminUser}"\r
expect \"Enter the password for user '${adminUser}':\"
send "${adminPassword}"\r
log_user 1
expect eof
" >> /var/db/ConfigurationProfiles/fdesetup

chown root /var/db/ConfigurationProfiles/fdesetup
chmod 700 /var/db/ConfigurationProfiles/fdesetup


unset adminUser
unset adminPassword