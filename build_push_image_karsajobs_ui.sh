#!/bin/bash

#* Build and push image to Docker Hub
docker build -t 70k0b0d0/karsajobs-ui:latest .

#* Login to Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u 70k0b0d0 --password-stdin

#* Push image to Docker Hubch
docker push 70k0b0d0/karsajobs-ui:latest
