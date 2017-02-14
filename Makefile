all: build run

build:
	docker build -t release-page .

run:
	docker rm -f release-page || true
	mkdir repos || true
	chmod 777 repos
	docker run --restart=always --env-file=./env -v $(PWD)/repos:/tmp/release-page -d -p 9009:8888 --name release-page release-page
