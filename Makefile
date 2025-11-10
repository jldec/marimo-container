.PHONY: build run

build:
	docker build --platform linux/amd64 -t container-demo-terminal .

run:
	docker run --rm -p 8080:8080 container-demo-terminal
