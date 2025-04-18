#!/bin/bash

echo "***************************"
echo "** Building jar ***********"
echo "***************************"

WORKSPACE=/var/jenkins_home/workspace/pipeline-maven

docker run --rm  -v $WORKSPACE/java-app:/app -v $HOME/root/.m2:/root/.m2 -w /app maven:3.9.9 "$@"
