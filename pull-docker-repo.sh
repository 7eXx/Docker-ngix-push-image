#!/bin/sh

docker_image=nginx-hello-world

username=marcotessari
password=wruoxEAag24IFMYiyWYv

if [ $# -eq 0 ] ; then
    echo 'No tag image provvided'
    exit 1
fi

image_tag=$1

image_name="$username/$docker_image:$image_tag"

docker login -u $username -p $password

docker build -t $image_name .

docker push $image_name 

docker logout