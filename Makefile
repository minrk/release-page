all: build run

build:
	docker build -t release-page .

run:
	docker rm -f release-page || true
	docker run --restart=always --env-file=./env -d -p 9009:8888 --name release-page release-page
