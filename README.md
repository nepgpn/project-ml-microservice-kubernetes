# project-ml-microservice-kubernetes
[![CircleCI](https://circleci.com/gh/nepgpn/project-ml-microservice-kubernetes/tree/main.svg?style=svg)](https://circleci.com/gh/nepgpn/project-ml-microservice-kubernetes/tree/main)

Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API.

You are given a pre-trained, sklearn model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on the data source site. This project tests your ability to operationalize a Python flask app—in a provided file, app.py—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

Project Tasks

Your project goal is to operationalize this working, machine learning microservice using kubernetes, which is an open-source system for automating the management of containerized applications. In this project you will:

Test your project code using linting
Complete a Dockerfile to containerize this application
Deploy your containerized application using Docker and make a prediction
Improve the log statements in the source code for this application
Configure Kubernetes and create a Kubernetes cluster
Deploy a container using Kubernetes and make a prediction
Upload a complete Github repo with CircleCI to indicate that your code has been tested
You can find a detailed project rubric, here.

Setup the Environment

Create a virtualenv and activate it
python3 -m venv ~/.devops
source ~/.devops/bin/activate
Run make install to install the necessary dependencies

Run app.py via Docker and Kubernetes

1. Standalone: python app.py
2. Docker: ./run_docker.sh
3. Kubetnetes: ./run_kubernetes.sh
4. upload docker image to personal Docker hub: ./uplaod_docker.sh
5. Delete kubernetes Pods: kubectl delete pods <PodName>

Troubleshoot during the steps:
(.devops) nepgpn@Ganeshs-MacBook-Pro project-ml-microservice-kubernetes % make lint
# See local hadolint install instructions:   https://github.com/hadolint/hadolint
# This is linter for Dockerfiles
hadolint Dockerfile
# This is a linter for Python source code linter: https://www.pylint.org/
# This should be run from inside a virtualenv
pylint --disable=R,C,W1203 app.py
************* Module app
app.py:23:11: W1309: Using an f-string that does not have any interpolated variables (f-string-without-interpolation)

-----------------------------------
Your code has been rated at 9.64/10

make: *** [lint] Error 4

fixes: vi app.py and remove the f on line 23


20 
 21 @app.route("/")
 22 def home():
 23     html = f"<h3>Sklearn Prediction Home</h3>" 
 24     return html.format(format)
 25 
 26 @app.route("/predict", methods=['POST'])
 27 def predict():
 28     """Performs an sklearn prediction

Result: 
(.devops) nepgpn@Ganeshs-MacBook-Pro project-ml-microservice-kubernetes % make lint
# See local hadolint install instructions:   https://github.com/hadolint/hadolint
# This is linter for Dockerfiles
hadolint Dockerfile
# This is a linter for Python source code linter: https://www.pylint.org/
# This should be run from inside a virtualenv
pylint --disable=R,C,W1203 app.py

-------------------------------------------------------------------
Your code has been rated at 10.00/10 (previous run: 9.64/10, +0.36)


hadolint warning:

(.devops) nepgpn@Ganeshs-MacBook-Pro project-ml-microservice-kubernetes % make lint
# See local hadolint install instructions:   https://github.com/hadolint/hadolint
# This is linter for Dockerfiles
hadolint Dockerfile
Dockerfile:13 DL3013 warning: Pin versions in pip. Instead of `pip install <package>` use `pip install <package>==<version>` or `pip install --requirement <requirements file>`
Dockerfile:13 DL3042 warning: Avoid use of cache directory with pip. Use `pip install --no-cache-dir <package>`
make: *** [lint] Error 1

Fixes: vi Dockerfile make the following change

# hadolint ignore=DL3013,DL3042
RUN pip install --upgrade pip==21.3.1 &&\
    pip install --trusted-host pypi.python.org -r requirements.txt 


(.devops) nepgpn@Ganeshs-MacBook-Pro project-ml-microservice-kubernetes % make lint    
# See local hadolint install instructions:   https://github.com/hadolint/hadolint
# This is linter for Dockerfiles
hadolint Dockerfile
# This is a linter for Python source code linter: https://www.pylint.org/
# This should be run from inside a virtualenv
pylint --disable=R,C,W1203 app.py

--------------------------------------------------------------------
Your code has been rated at 10.00/10 (previous run: 10.00/10, +0.00)


CircleCi Integration

Signup for circlci account with your github

1.0 create a .circleci dir and create a config.yml file.
2.0 copy the content of the yaml from the templete provided
3.0 push the code to your git hub
4.0 setup the project in circleci by selecting your project branch and the config.yml
5.0 Add the badge to README.md if workflow is sucessfull.


