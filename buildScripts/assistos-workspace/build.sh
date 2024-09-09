#!/bin/bash
chmod +x values.sh
source values.sh

git clone $ASSISTOS_REPO tmp/assistos-workspace
cd tmp/assistos-workspace

npm run dev-install

cd ../../
DOCKER_BUILDKIT=1 docker build --no-cache  -t $ASSISTOS_IMAGE_NAME:latest --build-arg BASE_IMAGE=$NODE_ALPINE_BASE_IMAGE -f Dockerfile . --network host
#rm -rf tmp