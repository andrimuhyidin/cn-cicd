#!/bin/bash

# Prerequisites
# Install helm v3 before running this script

# Set environment variables
RELEASE_NAME='appsn'
NS='pipelines'
HELM_REPO='../../projects/application'
VALUES_FILE="../../apps/appsn/values.yaml"

# Run CICD Pipeline
echo -n "Run your CICD Pipelines? [y/n]: "
read ans
if [ "$ans" == "y" ]; then
  helm upgrade -f $VALUES_FILE --install $RELEASE_NAME $HELM_REPO \
    --namespace $NS \
    --create-namespace
else
  echo "INFO: Exit without any action"
  exit 0
fi