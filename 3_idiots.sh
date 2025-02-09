#!/bin/bash

hero="rancho"

villen="virus"

echo "3 idiots ka hero he $hero"

echo "3 idots ka villen he $villen"

#shell / environment variables bhi hote he (PRE-DEFINED)


echo "current logged in user $USER"

#user inut
read -p "Rancho ka pura name kya tha? " fullname


echo "Rancho ka pura name $fullname tha"

#arguments
# ./3_idiots.sh raju farhan rancho

echo "movie ka name: $0"

echo "first idiot: $1"

echo "second idiot: $2"

echo "third idiot : $3"

echo "total no of idiots $#"

echo "Hence all idiots are $@"


