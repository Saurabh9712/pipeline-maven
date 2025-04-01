#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i ~/.ssh/prod-key /tmp/.auth prod-user@65.0.135.83:/tmp/.auth
scp -i ~/.ssh/prod-key ./jenkins/deploy/publish prod-user@65.0.135.83:/tmp/publish
ssh -i ~/.ssh/prod-key prod-user@65.0.135.83 "/tmp/publish"

