#!/bin/sh

source "$(dirname "$0")/config.sh"

if [ ! -f "./bin/$APP_NAME" ]; then
    echo "Binary $APP_NAME does not exist, building..."
    sh ./scripts/build.sh
fi

echo "Starting $APP_NAME in production mode..."

./bin/$APP_NAME