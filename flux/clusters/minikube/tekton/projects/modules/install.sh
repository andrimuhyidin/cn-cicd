#!/bin/bash

# Prerequisites
# Install helm v3 before running this script

# Set environment variables
RELEASE_NAME='cicd-components'
HELM_REPO='.'
NS='pipelines'
VALUES_FILE="../../projects/modules/values.yaml"

# Install with Helm Chart
echo -n "Do you want to proceed? [y/n]: "
read ans
if [ "$ans" == "y" ]; then
  helm upgrade -f $VALUES_FILE --install $RELEASE_NAME $HELM_REPO \
    --namespace $NS \
    --create-namespace
else
  echo "INFO: Exit without any action"
  exit 0
fi