#!/bin/bash

myvar="Hi there"

echo $myvar
echo "$myvar"
echo '$myvar'
echo \$myvar

echo Enter some text
read myvar

echo '$myvar' now equals $myvar
exit 0

# <===================OUTPUT===================>
# $ bash variable.sh
# Hi there
# Hi there
# $myvar
# $myvar
# Enter some text
# maintext
# $myvar now equals maintext
