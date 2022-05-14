#!/usr/bin/env bash

# Tagging & Uploading an Image to Docker Hub

# Step (1):
# Creating dockerpath
dockerpath=mostafaramzy95/udacityproject3

# Step (2):  
# Authenticating & Tagging
echo "Docker ID and Image: $dockerpath"
docker login
docker tag udacityproject3:latest mostafaramzy95/udacityproject3:latest

# Step (3):
docker push mostafaramzy95/udacityproject3:latest