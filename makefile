clean:
	/bin/sh ./scripts/clean.sh

build-debug: clean
	/bin/sh ./scripts/build-debug.sh

start-debug: clean
	/bin/sh ./scripts/start-debug.sh

build: clean
	/bin/sh ./scripts/build.sh

start: clean
	/bin/sh ./scripts/start.sh