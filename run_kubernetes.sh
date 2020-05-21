#!/usr/bin/env bash

# Starts Kubernetes

dockerpath="vidbregar/ml-microservice:latest"

kubectl run ml-microservice\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=ml-microservice

kubectl get pods

kubectl port-forward ml-microservice 8000:80
