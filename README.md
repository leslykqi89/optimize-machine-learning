[![CircleCI](https://circleci.com/gh/leslykqi89/optimize-machine-learning.svg?style=svg)](https://circleci.com/gh/leslykqi89/optimize-machine-learning)

## Project Overview

In this project, you can see a docker image with a sklearn application that predicts housing prices in Boston. This repository contains files to create the docker image, push the image into the Docker Hub and Create a pod into Kubernetes. Additionally, it is integrated with CircleCI to deploy the application.

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Files Description

**run_docker.sh**: This file builds the docker image and runs the image with the name `flaskApp` in the port 8000.

**upload_docker.sh**: This file uploads the docker image into the Docker Hub.

**run_kubernetes**: This file creates a pod of the docker image with the name `flask-app`, validate the pod name and port to forward the port 8000 to the pod's port.
