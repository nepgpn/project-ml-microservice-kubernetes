#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=udacity-microservice-project .

# Step 2: 
# List docker images
docker images | grep udacity-microservice-project 

# Step 3: 
# Run flask app
docker run -p 8000:80 udacity-microservice-project