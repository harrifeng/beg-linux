#!/bin/bash

salutation="Hello"
echo $salutation
echo "The program $0 is now running"
echo "The second parameter was $2"
echo "The first parameter was $1"
echo "The user's home directory is $HOME"
echo "Please enter a new greeting"
read salutation

echo $salutation
echo "The script is now complete"
exit 0

# <===================OUTPUT===================>
# $ bash try_var.sh first second third
# Hello
# The program try_var.sh is now running
# The second parameter was second
# The first parameter was first
# The user's home directory is /home/hfeng
# Please enter a new greeting
# hfeng
# hfeng
# The script is now complete
