#!/usr/bin/env bash

docker build -t ml-microservice .

docker image ls

docker run -p 8000:80 -d ml-microservice
