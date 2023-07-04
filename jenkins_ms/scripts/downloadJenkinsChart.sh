#!/bin/bash

VERSION=4.3.22

# This script is used for the initial download of the helm chart.
# Download the chart after adding the repo.
helm repo add jenkinsci https://charts.jenkins.io
helm repo update
helm fetch jenkinsci/jenkins --version ${VERSION}
mv jenkins-${VERSION}.tgz ../charts/jenkins-${VERSION}.tgz.original
