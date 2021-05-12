#!/bin/sh

docker_image=nginx-hello-world

username=marcotessari
password=wruoxEAag24IFMYiyWYv

image_name="$username/$docker_image:latest"

docker login -u $username -p $password

docker build -t $image_name .

docker push $image_name 

docker logout