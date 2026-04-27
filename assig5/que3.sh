#!/bin/bash

echo "enter name:"
read name

if [ -f "$name" ]
then

echo "it is a file "
echo "file size:"
wc -c < "$name"

elif [ -d "$name" ]
then 

echo "it is a directory"
echo "directory contents:"
ls "$name"

else 
echo "not a file or directory"
fi
