FROM ubuntu:focal

# Prepare Ubuntu and Install Packages
RUN apt-get update -y && apt-get install -y \
    build-essential \
    clang \
    openjdk-8-jdk-headless \
    openjdk-11-jdk-headless \
    python2 \
    python3 \
    golang \
    golang-goprotobuf-dev

RUN ls /usr/lib/jvm
