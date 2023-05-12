#!/bin/sh
# Build a docker image containing node, npm, and vue cli
#Set the required vue cli version
VUE_CLI_VERSION='3.8.0'
docker buildx build --platform linux/amd64,linux/arm64 --push -t "docker-release.crowdcode.io/builders/vue-cli-builder:${VUE_CLI_VERSION}" --build-arg VUE_CLI_VERSION=${VUE_CLI_VERSION} .
