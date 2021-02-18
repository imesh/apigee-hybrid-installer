# Apigee hybrid Installer for GKE

This repository was forked from [devrel](https://github.com/apigee/devrel/tree/main/tools/hybrid-quickstart) with the intention of creating a single repostiory for installing Apigee hybrid on GKE and adding new features.

This installer provides a fully automated quickstart setup of Apigee hybrid on GKE. The configuration options are limited and simplified on purpose. The resulting Apigee hybrid environment is intended to serve as an initial end to end setup without production grade hardening and reliability.

## Prerequisites

Install the following prerequisites if not installed already:
- [TAR (tar)](https://www.gnu.org/software/tar/)
- [OpenSSL (openssl)](https://www.openssl.org/source/)
- [Google Cloud CLI (gcloud)](https://cloud.google.com/sdk/docs/install)
- [Kubernetes CLI (kubectl)](https://cloud.google.com/sdk/gcloud/reference/components/install)

## How to Install

1. Create a new GCP project via [GCP console](https://cloud.google.com/resource-manager/docs/creating-managing-projects).

2. Clone this Git repository:

   ```bash
   git clone https://github.com/imesh/apigee-hybrid-installer.git
   ```

3. Set Apigee hybrid version, GCP project name and other parameters in `environment.sh` file:

   ```bash
   export APIGEE_HYBRID_VERSION="1.4.1"
   export PROJECT_ID=$(whoami)-hybrid-1
   export REGION='australia-southeast1'
   export ZONE='australia-southeast1-a'
   export GKE_CLUSTER_NAME='apigee-hybrid'
   export ENV_NAME='test1'
   export ENV_GROUP_NAME='test'
   export DNS_NAME="$PROJECT_ID.example.com"
   ```

   NOTE: Apigee hybrid versions 1.3.4 and 1.4.1 have been verified. Please report if you encounter any issues for other hybrid versions.

4. Execute `install.sh`:
   ```bash
   ./install.sh
   ```

## How to Uninstall

1. Ensure that GCP project name and other parameters given in the `environment.sh` file are correct.

2. Execute `uninstall.sh`:
   ```bash
   ./uninstall.sh
   ```

## Disclaimer

This is not an officially supported Google product.
