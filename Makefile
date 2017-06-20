VOLUMES = -v $(shell pwd)/target:/target
ENV = -e http_proxy="${http_proxy}" https_proxy="${https_proxy}"

.PHONY: build run proxy_run

build:
	docker build -t docker-nginx-testcookie-build:latest .

run:
	if [ -d target ]; then rm -rf target; fi
	mkdir target
	docker run --rm --name docker-nginx-testcookie-build $(VOLUMES) docker-nginx-testcookie-build

proxy_run:
	if [ -d target ]; then rm -rf target; fi
	mkdir target
	docker run --rm --name docker-nginx-testcookie-build $(VOLUMES) $(ENV) docker-nginx-testcookie-build



default: build
