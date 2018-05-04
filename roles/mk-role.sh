#! /bin/bash

if [ $# -ne 1 ]; then
    echo "Need a single argument for role name."
    exit 1
fi

name=$1
echo "Making $name role.."
mkdir -p $name/tasks
touch $name/tasks/main.yml
