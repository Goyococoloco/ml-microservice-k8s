#!/usr/bin/env bash
# Builds and starts a container

docker build -t vidbregar/ml-microservice .

docker image ls

docker run -p 8000:80 -d vidbregar/ml-microservice
