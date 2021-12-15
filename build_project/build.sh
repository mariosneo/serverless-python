#!/bin/bash

echo "Build and Run the container."

docker build -t serverless-python -f Dockerfile .

docker run --env PORT=5000 -it -p 80:5000 serverless-python

echo "Done."


