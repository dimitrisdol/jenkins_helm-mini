#!/bin/bash

ENV_ID=uat	
VERSION=4.3.30

# Install Jenkins

helm upgrade --install jenkins --values values.yaml --values environmentsConfig/${ENV_ID}_values.yaml --atomic -n jenkins --create-namespace --timeout 5m0s charts/jenkins-${VERSION}.tgz  --debug

