if [ -z "$ASSISTOS_IMAGE_NAME" ] || [ -z "$VERSION" ]; then
    echo "ASSISTOS_IMAGE_NAME or VERSION is not set"
    exit 1
fi

docker tag "$HUB_IDENTIFIER/$ASSISTOS_IMAGE_NAME:latest" "$HUB_IDENTIFIER/$ASSISTOS_IMAGE_NAME:$VERSION"
