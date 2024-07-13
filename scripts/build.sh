#!/bin/sh

set -e 

source "$(dirname "$0")/config.sh"

go build -o bin/$APP_NAME cmd/main.go