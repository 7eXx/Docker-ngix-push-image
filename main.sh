#!/bin/sh

docker_image=nginx-example

echo "building image with name: $docker_image"

docker build -t $docker_image .

echo "starting container with name: $docker_image"

docker run -d --rm --name nginx-example -p 8080:80 nginx-example