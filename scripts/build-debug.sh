#!/bin/sh

set -e

source "$(dirname "$0")/config.sh"

CGO_ENABLED=0 go build -gcflags=all="-N -l" -o bin/$APP_NAME-debug cmd/main.go