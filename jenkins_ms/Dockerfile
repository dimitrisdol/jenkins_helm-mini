FROM jenkins/jenkins:2.401.2-jdk11

USER root
RUN apt-get update && apt-get install -y ca-certificates && update-ca-certificates
COPY creds/ /usr/local/share/ca-certificates/
RUN update-ca-certificates
USER jenkins
