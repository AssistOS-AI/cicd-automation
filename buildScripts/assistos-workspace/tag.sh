. values.sh
if [ -z "$ASSISTOS_IMAGE_NAME" ]; then
    echo "ASSISTOS_IMAGE_NAME is not set"
    exit 1
fi
if [ -z "$VERSION" ]; then
    echo "VERSION is not set"
    exit 1
fi
if [ -z "$HUB_IDENTIFIER" ]; then
    echo "HUB_IDENTIFIER is not set"
    exit 1
fi

docker tag "$HUB_IDENTIFIER/$ASSISTOS_IMAGE_NAME:latest" "$HUB_IDENTIFIER/$ASSISTOS_IMAGE_NAME:$VERSION"
