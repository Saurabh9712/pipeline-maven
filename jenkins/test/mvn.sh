#!/bin/bash

echo "***************************"
echo "** Testing the Code  ***********"
echo "***************************"

#WORKSPACE=/home/jenkins/jenkins-data/jenkins_home/workspace/pipeline-docker-maven

docker run --rm  -v $PWD/java-app:/app -v $HOME/root/.m2:/root/.m2 -w /app maven:3.9.9 "$@"
