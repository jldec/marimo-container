.PHONY: build run

build:
	docker build --platform linux/amd64 -t term1 .

run:
	docker run --rm -p 8080:8080 term1
