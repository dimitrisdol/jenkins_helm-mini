#!/bin/bash

VERSION=52.0.0

# This script is used for the initial download of the helm chart.
# Download the chart after adding the repo.
helm repo add sonatype https://sonatype.github.io/helm3-charts/
helm repo update
helm fetch sonatype/nexus-repository-manager --version ${VERSION}
mv nexus-repository-manager-${VERSION}.tgz ../charts/nexus-repository-manager-${VERSION}.tgz.original
