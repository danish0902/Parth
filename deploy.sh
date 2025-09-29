#!/bin/bash
# deploy.sh: Simple deployment script for Podman containers

set -e

IMAGE_NAME="myapp"
CONTAINER_NAME="myapp-container"
PORT="8080"

echo "🚀 Starting deployment process..."

# Stop and remove existing container if running
if podman ps -q -f name=$CONTAINER_NAME; then
    echo "📦 Stopping existing container..."
    podman stop $CONTAINER_NAME
    podman rm $CONTAINER_NAME
fi

# Build new image
echo "🔨 Building new image..."
podman build -t $IMAGE_NAME:latest .

# Run new container
echo "🏃 Starting new container..."
podman run -d --name $CONTAINER_NAME -p $PORT:80 $IMAGE_NAME:latest

# Verify deployment
echo "✅ Verifying deployment..."
sleep 2
if podman ps -q -f name=$CONTAINER_NAME; then
    echo "✅ Deployment successful!"
    echo "🌐 Application running on http://localhost:$PORT"
    podman ps -f name=$CONTAINER_NAME
else
    echo "❌ Deployment failed!"
    exit 1
fi