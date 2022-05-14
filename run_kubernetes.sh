#!/usr/bin/env bash

# Tagging & Uploading an Image to Docker Hub

# Step (1):
# This is your Docker ID/path
dockerpath=mostafaramzy95/udacitycapstone

# Step (2):
# Running the Docker Hub Container with kubernetes
docker login
kubectl run udacitycapstone\
    --image=$dockerpath\
    --port=80 --labels app=udacitycapstone

# Step (3):
# Listing the Kubernetes Pods
kubectl get pods

# Step (4):
# Listing the Kubernetes Services
kubectl get svc

echo "Sleeping for 10 seconds while waiting for Pod to come up."
sleep 10

# Step 5:
# Forwarding the Container Port to a Host
kubectl expose deployment udacitycapstone --type=LoadBalancer --port=8080 --target-port=80