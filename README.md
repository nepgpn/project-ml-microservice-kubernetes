# project-ml-microservice-kubernetes
[![CircleCI](https://circleci.com/gh/nepgpn/project-ml-microservice-kubernetes/tree/main.svg?style=svg)](https://circleci.com/gh/nepgpn/project-ml-microservice-kubernetes/tree/main)

##Project Overview
In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API.

You are given a pre-trained, sklearn model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on the data source site. This project tests your ability to operationalize a Python flask app—in a provided file, app.py—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

## Project Tasks
Your project goal is to operationalize this working, machine learning microservice using kubernetes, which is an open-source system for automating the management of containerized applications. In this project you will:

Test your project code using linting
Complete a Dockerfile to containerize this application
Deploy your containerized application using Docker and make a prediction
Improve the log statements in the source code for this application
Configure Kubernetes and create a Kubernetes cluster
Deploy a container using Kubernetes and make a prediction
Upload a complete Github repo with CircleCI to indicate that your code has been tested
You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view)

**The final implementation of the project will showcase your abilities to operationalize production microservices.**
-------------
#### Setup the environment

- Create a virtualenv and activate it
- `python3 -m venv ~/.devops`
- `source ~/.devops/bin/activate`
- Run make install to install the necessary python dependencies and hadolint 
- Address any warning/error with the  Dockerfile and source code. Example 
```
# This is linter for Dockerfiles
hadolint Dockerfile
# This is a linter for Python source code linter: https://www.pylint.org/
# This should be run from inside a virtualenv
pylint --disable=R,C,W1202,W1203 app.py
-------------------------------------------------------------------
Your code has been rated at 10.00/10 (previous run: 8.62/10, +1.38)
```

#### Run app.py via Docker and Kubernetes

- Standalone: `python app.py`
- Docker: `./run_docker.sh`
- Kubetnetes: `./run_kubernetes.sh`
- upload docker image to personal Docker hub: `./upload_docker.sh`
- Delete kubernetes Pods: `kubectl delete pods <PodName>`

####  Delete Cluster

After completion of the project, run `minikube delete` or  stop the kubernetes cluster with this command `minikube stop`


#### CircleCi Integration

- Signup for circlci account with your github if you do not have one [CircleCI Account](https://circleci.com/)
- create a `.circleci` dir and create a `config.yml` file.
- copy the content of the yaml from the templete provided
- push the code to your git hub
- setup the project in circleci by selecting your project branch and the config.yml
- Add the badge to README.md if workflow is sucessfull.


