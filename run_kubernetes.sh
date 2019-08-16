#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=leslykqi/flask_app

# Step 2
# Run the Docker Hub container with kubernetes
echo $dockerpath
kubectl run flask-app --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods
pod=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
port=$(kubectl get pods $pod --template='{{(index (index .spec.containers 0).ports 0).containerPort}}{{"\n"}}')

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/flask-app 8000:$port

