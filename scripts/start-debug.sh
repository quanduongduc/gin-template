#!/bin/sh

set -e

source "$(dirname "$0")/config.sh"

export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

PORT=2345
if lsof -i:$PORT; then
    echo "Port $PORT is in use. Attempting to free it."
    sudo fuser -k $PORT/tcp
else
    echo "Port $PORT is free."
fi

# Check if air is installed
if ! command -v air &> /dev/null; then
    echo "air could not be found, please install it."
    exit 1
fi

air -c .air.toml