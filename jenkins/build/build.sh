#!/bin/bash

#copy the new jar to the build location

cp -f java-app/target/*.jar jenkins/build

echo "*******************************"
echo "***Building the docker image***"
echo "*******************************"

cd jenkins/build && docker-compose -f docker-compose-build.yml build --no-cache

