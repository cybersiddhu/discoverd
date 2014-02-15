
build:
	mkdir -p build
	godep go build -o build/discoverd

container: build
	docker build -rm -t cybersiddhu/discoverd .

clean:
	rm -rf build

.PHONY: build
