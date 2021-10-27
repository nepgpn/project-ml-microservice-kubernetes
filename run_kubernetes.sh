#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="nepgpn/udacity-microservice-project"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-microservice-project\
    --image=$dockerpath\
    --port=80 --labels app=uda-ml-2021

# Wait to pod status will be ready
kubectl wait pod/udacity-microservice-project --for=condition=Ready --timeout=-1s

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udacity-microservice-project 8000:80
