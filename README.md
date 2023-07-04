To start a test-cluster to test the following deployment:

minikube start --driver docker --delete-on-failure --nodes 3 --subnet "192.168.49.0/24" --memory 16384 --cpus 3 --insecure-registry 192.168.49.2:32002 --insecure-registry 192.168.49.1:8081
