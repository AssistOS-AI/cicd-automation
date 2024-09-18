#!/bin/bash
echo "Setting variables ..."
NODE_ALPINE_BASE_IMAGE='node:20.15.0-alpine'
HUB_IDENTIFIER='docker.io'
LLMADAPTER_REPO='https://github.com/AssistOS-AI/llmadapter.git'
LLMADAPTER_NAME='llmadapter'
LLMADAPTER_IMAGE_NAME='assistos/llmadapter'
if [[ -z "$VERSION" ]]; then
  VERSION='1.0.0'
fi
