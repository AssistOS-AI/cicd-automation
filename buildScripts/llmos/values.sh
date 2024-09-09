#!/bin/bash
echo "Setting variables ..."
NODE_ALPINE_BASE_IMAGE='node:20.15.0-alpine'
HUB_IDENTIFIER='docker.io'
LLMOS_REPO='https://github.com/AssistOS-AI/LLMOS.git'
LLMOS_NAME='llmos'
LLMOS_IMAGE_NAME='assistos/llmos'
if [[ -z "$VERSION" ]]; then
  VERSION='1.0.0'
fi
