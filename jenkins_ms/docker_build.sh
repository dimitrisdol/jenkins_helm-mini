#!/bin/bash

export NODE_IP=$(kubectl get nodes --namespace nexus -o jsonpath="{.items[0].status.addresses[0].address}")

echo http://$NODE_IP

make REGISTRY=$NODE_IP

