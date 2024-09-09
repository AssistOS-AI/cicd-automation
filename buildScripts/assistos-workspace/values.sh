#!/bin/bash
echo "Setting variables ..."
NODE_ALPINE_BASE_IMAGE='node:20.15.0-alpine'
HUB_IDENTIFIER='docker.io'
ASSISTOS_REPO='https://github.com/AssistOS-AI/assistos-workspace.git'
ASSISTOS_NAME='assistos-workspace'
ASSISTOS_IMAGE_NAME='assistos/assistos-workspace'
if [[ -z "$VERSION" ]]; then
  VERSION='1.0.0'
fi
