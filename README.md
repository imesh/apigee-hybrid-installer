# Apigee hybrid Installer for GKE

This repository was forked from [devrel](https://github.com/apigee/devrel/tree/main/tools/hybrid-quickstart) with the intention of creating a single repostiory for installing Apigee hybrid and adding new features.

This installer provides a fully automated quickstart setup of Apigee hybrid on GKE. The configuration options are limited and simplified on purpose. The resulting Apigee hybrid environment is intended to serve as an initial end to end setup without production grade hardening and reliability.

## Prerequisites

Install following prerequisites if not installed already:

```bash
#installed kubectl
kubectl version

#installed tar
tar --help

#installed openssl
openssl version

#installed gcloud
gcloud auth list

#login if needed
gcloud init
```

## How to Install

1. Set GCP project name and other parameters in `environment.sh`:
   ```bash
   export PROJECT_ID=$(whoami)-hybrid-1
   export REGION='australia-southeast1'
   export ZONE='australia-southeast1-a'
   export GKE_CLUSTER_NAME='apigee-hybrid'
   export APIGEE_HYBRID_VERSION="1.4.1"
   export ENV_NAME='test1'
   export ENV_GROUP_NAME='test'
   export DNS_NAME="$PROJECT_ID.example.com"
   ```

2. Execute `install.sh`:
   ```bash
   ./install.sh
   ```

## How to Uninstall

1. Ensure that relevant GCP project name and other parameters are set in `environment.sh`:
   ```bash
   export PROJECT_ID=$(whoami)-hybrid-1
   export REGION='australia-southeast1'
   export ZONE='australia-southeast1-a'
   export GKE_CLUSTER_NAME='apigee-hybrid'
   export APIGEE_HYBRID_VERSION="1.4.1"
   export ENV_NAME='test1'
   export ENV_GROUP_NAME='test'
   export DNS_NAME="$PROJECT_ID.example.com"
   ```

2. Execute `uninstall.sh`:
   ```bash
   ./uninstall.sh
   ```
