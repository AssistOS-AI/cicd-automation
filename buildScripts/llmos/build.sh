#!/bin/bash
chmod +x values.sh
source values.sh

git clone $LLMOS_REPO tmp/llmos
cd tmp/llmos

npm install

cd ../../
DOCKER_BUILDKIT=1 docker build --no-cache  -t $LLMOS_IMAGE_NAME:latest --build-arg BASE_IMAGE=$NODE_ALPINE_BASE_IMAGE -f Dockerfile . --network host
#rm -rf tmp