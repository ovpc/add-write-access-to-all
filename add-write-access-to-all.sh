#!/bin/bash
# Ask the PATH
echo Type the full PATH to folder needing write access 
read varname
echo The folders name is $varname asigning write access.....You may be asked your (sudo) password.
chmod a+w -R $varname
echo Write access granted to $varname 
exit
