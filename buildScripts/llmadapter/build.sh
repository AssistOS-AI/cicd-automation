#!/bin/bash
chmod +x values.sh
source values.sh

git clone $LLMADAPTER_REPO tmp/llmadapter
cd tmp/llmadapter
apk add dotnet9-runtime

npm install

cd ../../
DOCKER_BUILDKIT=1 docker build --no-cache  -t $LLMADAPTER_IMAGE_NAME:latest --build-arg BASE_IMAGE=$NODE_ALPINE_BASE_IMAGE -f Dockerfile . --network host
#rm -rf tmp