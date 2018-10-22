# Save time when creating the basic role structure
#! /bin/bash

if [ $# -ne 1 ]; then
    echo "Need a single argument for role name."
    exit 1
fi

name=$1
echo "Making $name role.."
mkdir -p ./roles/$name/tasks
touch ./roles/$name/tasks/main.yml
