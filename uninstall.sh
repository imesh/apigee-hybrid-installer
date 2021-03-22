#!/bin/bash
set -e

echo "Setting environment variables..."
source environment.sh

echo "PROJECT_ID=${PROJECT_ID}"
echo "REGION=${REGION}"
echo "AX_REGION=${AX_REGION}"
echo "ZONE=${ZONE}"
echo "GKE_CLUSTER_NAME=${GKE_CLUSTER_NAME}"
echo "APIGEE_HYBRID_VERSION=${APIGEE_HYBRID_VERSION}"
echo "ENV_NAME=${ENV_NAME}"
echo "ENV_GROUP_NAME=${ENV_GROUP_NAME}"
echo "DNS_NAME=${DNS_NAME}"

echo "Setting gcloud config..."
gcloud config set project $PROJECT_ID
gcloud config set compute/region $REGION
gcloud config set compute/zone $ZONE

echo "Starting un-installation..."
bash destroy-runtime-gke.sh
