FROM ubuntu:groovy

ARG DEBIAN_FRONTEND=noninteractive

# Prepare Ubuntu and Install Packages
RUN apt-get update -y && apt-get install -y \
    build-essential \
    clang \
    openjdk-8-jdk-headless \
    openjdk-11-jdk-headless \
    python2 \
    python3 \
    golang \
    git \
    protobuf-compiler

RUN go get google.golang.org/grpc/cmd/protoc-gen-go-grpc \
    google.golang.org/protobuf/cmd/protoc-gen-go

RUN GOBIN=/usr/local/bin/ go install google.golang.org/grpc/cmd/protoc-gen-go-grpc
RUN GOBIN=/usr/local/bin/ go install google.golang.org/protobuf/cmd/protoc-gen-go

RUN ls /usr/lib/jvm
