#!/bin/bash
docker login -u "$DOCKER_USERNAME" -p  "$DOCKER_PASSWORD"
docker push dockerfonseka/dockergoapptwo



echo "---- Post to the Deployment Manager ----"

curl http://www.google.com
