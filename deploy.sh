#!/bin/bash
# deploy.sh: Improved deployment script for Podman containers
set -e

IMAGE_NAME="myapp"
CONTAINER_NAME="myapp-container"
PORT="8080"

echo "🚀 Starting deployment process..."

# Function to cleanup on error
cleanup() {
    echo "🧹 Cleaning up on error..."
    podman rm -f $CONTAINER_NAME 2>/dev/null || true
}
trap cleanup ERR

# Stop and remove existing container if running
if podman ps -q -f name=$CONTAINER_NAME 2>/dev/null; then
    echo "📦 Stopping existing container..."
    podman stop $CONTAINER_NAME
    podman rm $CONTAINER_NAME
fi

# Build new image
echo "🔨 Building new image..."
podman build -t $IMAGE_NAME:latest .

# Test the container first
echo "🧪 Testing container..."
test_output=$(podman run --rm $IMAGE_NAME:latest)
if [[ "$test_output" == *"Hello from Podman container!"* ]]; then
    echo "✅ Container test passed"
else
    echo "❌ Container test failed. Output: $test_output"
    exit 1
fi

# For a simple script app, we can't run it as a daemon
# Instead, we'll verify the deployment works
echo "✅ Deployment verification successful!"
echo "🌐 Application tested and ready"
echo "📋 To run the application: podman run --rm $IMAGE_NAME:latest"

# Show available images
echo "📊 Available images:"
podman images | grep $IMAGE_NAME || echo "No images found"