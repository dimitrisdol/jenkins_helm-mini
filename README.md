To start a test-cluster to test the following deployment:

minikube start --driver docker --delete-on-failure --nodes 3 --subnet "192.168.49.0/24" --memory 16384 --cpus 3 --insecure-registry 192.168.49.2:32002 --insecure-registry 192.168.49.2:32003 --insecure-registry 192.168.49.1:8081 --mount-string=/home/jim/nexus-data:/nexus-data --mount-uid 1000 --mount

# To mount mutiple folders extra commands will be needed:

minikube mount /mnt:/mnt &

Then proceed with the following: Install nexus chart, Build custom Jenkins image and Install Jenkins chart

