#!/bin/bash

IMAGE_LIST="$1"

if [ ! -f "$IMAGE_LIST" ]; then
    echo "Error: File '$IMAGE_LIST' not found."
    exit 1
fi

while IFS= read -r line || [ -n "$line" ]; do
    docker pull $line
done < "$IMAGE_LIST"


docker images --format '{{.Repository}}':'{{.Tag}}' | while IFS= read -r line
do
    filename=$(echo $line | sed 's/:/./g')
    filename=$(echo $filename | sed 's/\//../g').tar
    echo $filename
    echo $line
    docker save $line -o $filename
done
