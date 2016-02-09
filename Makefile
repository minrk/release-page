all: build run

build:
	docker build -t release-page .

run:
	docker rm -f release-page
	docker run -d -p 80:8888 --name release-page release-page
