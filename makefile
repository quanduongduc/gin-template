# the name of the binary when built
BINARY_NAME=my-app

# remove any binaries that are built
clean:
	rm -f ./bin/$(BINARY_NAME)*

build-debug: clean
	CGO_ENABLED=0 go build -gcflags=all="-N -l" -o bin/$(BINARY_NAME)-debug cmd/main.go

start-dev:
	bash ./scripts/start-dev.sh