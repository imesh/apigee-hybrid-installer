#!/bin/bash
set -e

echo "Setting environment variables..."
source environment.sh

echo "Setting gcloud config..."
gcloud config set project $PROJECT_ID
gcloud config set compute/region $REGION
gcloud config set compute/zone $ZONE

echo "Starting un-installation..."
bash destroy-runtime-gke.sh
