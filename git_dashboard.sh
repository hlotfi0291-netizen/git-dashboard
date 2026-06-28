#!/bin/bash

echo "Git Project Dashboard"

read -e -p "Enter the projects path: " projects

array=()
for i in "$projects"/* 
do
    if [ -d "$i/.git" ]
    then
           array+=("$i") 
    fi
done
for i in "${array[@]}"
do 
    echo "repository: $(basename "$i")"  
    cd "$i"
    echo "branch: $(git branch --show-current)"
 
    status=$(git status -s)
    if [ -z "$status" ] 
    then
           echo "status: clean" 
    else
 
           echo "status: modified" 
    fi
    echo "last commit: $(git log --pretty=format:"%s" -1)"


done

