#!/bin/sh

# build a Docker image
mvn clean spring-boot:build-image -D skipTests

# push the image to docker hub repository
docker tag gateway:0.0.1-SNAPSHOT akorotky/webforum:gateway
docker push akorotky/webforum:gateway