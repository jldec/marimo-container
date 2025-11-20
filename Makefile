.PHONY: build run

build:
	docker build --platform linux/amd64 -t marimo-container .

run:
	docker run --rm -p 8080:8080 marimo-container
