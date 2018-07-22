#!/bin/bash
docker login -u "$DOCKER_USERNAME" -p  "$DOCKER_PASSWORD"
docker push dockerfonseka/dockergoapptwo:latest



echo "---- Post to the Deployment Manager ----"


echo "Health check"
curl "$DEPLOY_HEALTH"

echo "DEPLOY !!!"

curl "$DEPLOY_APP"
