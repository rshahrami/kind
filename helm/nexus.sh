#!/bin/bash

# input="$PWD/roles/longhorn/files"
# imagesList="$PWD/temp"



if [[ -z $(docker images -q sonatype/nexus3) ]]
then

    read -p "Enter version of nesus ( for example : 3.39.0 (default)): " version

    if [[ -z $version ]]
    then
    docker pull sonatype/nexus3:3.39.0
    else
    docker pull sonatype/nexus3:$version
    fi

else
    
fi


while IFS= read -r line
do
    echo "$line"
    docker pull "$line"
    for i in {1..2}
    do
        echo " "
    done
done < "$imagesList"

for i in {1..2}
do
    echo " "
done
echo "download all images success"

