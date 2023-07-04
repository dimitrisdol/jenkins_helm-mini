#!/bin/bash

ENV_ID=uat	
VERSION=52.0.0

# Install Jenkins

helm upgrade --install nexus --values values.yaml --values environmentsConfig/${ENV_ID}_values.yaml --atomic -n nexus --create-namespace --timeout 10m0s charts/nexus-repository-manager-${VERSION}.tgz  --debug
