#! /bin/sh

#* Build and push image to Docker Hub
docker build -t 70k0b0d0/karsajobs:latest .

#* Login to Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u 70k0b0d0 --password-stdin

#* Push image to Docker Hub
docker push 70k0b0d0/karsajobs:latest
