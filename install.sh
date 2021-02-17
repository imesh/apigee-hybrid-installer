#!/bin/bash

echo "Setting environment variables..."
export PROJECT_ID=$(whoami)-hybrid-1
export REGION='australia-southeast1'
export AX_REGION=$REGION
export ZONE='australia-southeast1-a'
export GKE_CLUSTER_NAME='apigee-hybrid'

export ENV_NAME='test1'
export ENV_GROUP_NAME='test'
export DNS_NAME="$PROJECT_ID.example.com"

echo "Setting gcloud config..."
gcloud config set project $PROJECT_ID
gcloud config set compute/region $REGION
gcloud config set compute/zone $ZONE

echo "Starting installation..."
bash initialize-runtime-gke.sh

echo "Checking Istio Ingress Gateway IP address..."
kubectl -n istio-system get services/istio-ingressgateway -o jsonpath="{.status.loadBalancer.ingress[*].ip}"