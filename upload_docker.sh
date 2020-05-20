#!/usr/bin/env bash
# Tags and uploads an image to Docker Hub
# Assumes that an image is built via `run_docker.sh`

dockerpath="vidbregar/ml-microservice:latest"

docker login --username=vidbregar
docker tag ml-microservice - $dockerpath
echo "Docker ID and Image: $dockerpath"

docker push $dockerpath
