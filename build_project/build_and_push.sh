#!/bin/bash -xv

source $(dirname $0)/vars.sh

echo "Build the image"
docker build -t serverless-python -f Dockerfile .

echo "Tag the image"
docker tag serverless-python gcr.io/$PROJECT_ID/serverless-python

echo "Push the image to the registry"

docker push gcr.io/$PROJECT_ID/serverless-python