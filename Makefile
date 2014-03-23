
build:
	mkdir -p build
	godep go build -o build/discoverd

container: build
	docker build -rm -t cybersiddhu/discoverd .

clean:
	rm -rf build

run:
	docker run -name etcd -p 4001:4001 -d coreos/etcd
	docker run -link etcd:etcd -name discoverd -d -p 1111:1111 cybersiddhu/discoverd

stop:
	docker stop discoverd
	docker stop etcd
	docker rm etcd
	docker rm discoverd

.PHONY: build
