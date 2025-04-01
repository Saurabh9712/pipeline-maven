#!/bin/bash

echo "*************************"
echo "*** Pushing the Image****"
echo "*************************"

IMAGE="maven-project"

echo "***Docker logging in***"

docker login -u saurabhk33 -p $PASS

echo "****Tagging Image*****"

docker tag $IMAGE:$BUILD_TAG saurabhk33/$IMAGE:$BUILD_TAG


echo "****Pushing the image*****"

docker push saurabhk33/$IMAGE:$BUILD_TAG


