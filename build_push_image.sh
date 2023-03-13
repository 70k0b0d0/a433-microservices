#! /bin/sh

docker build -t item-app:v1 .
#* Build the image from the Dockerfile in the current directory

docker images
#* Show list of docker images

docker tag item-app:v1 70k0b0d0/item-app:v1
#* Tag the image with the docker hub username

docker login --username=$DOCKER_USER --password=$DOCKER_PASS $DOCKER_HOST
#* Login to docker hub

docker push 70k0b0d0/item-app:v1
#* Push the image to docker hub

#* Run the image