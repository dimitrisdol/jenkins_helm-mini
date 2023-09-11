#!/bin/bash

ENV_ID=uat	
VERSION=4.3.30

# Install DG11 crt

kubectl create ns jenkins
kubectl create secret generic gitlab-certificate --from-file=creds/gitlab.crt -n jenkins

# Install Jenkins

helm upgrade --install jenkins --values values.yaml --values environmentsConfig/${ENV_ID}_values.yaml --atomic -n jenkins --timeout 5m0s charts/jenkins-${VERSION}.tgz  --debug

