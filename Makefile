
build-all: axemc-alpine axemc-centos axemc-rocky axemc-ubuntu

axemc-alpine:
	docker build -t axemc-alpine -f ./alpine/Dockerfile ./alpine
	docker run -itd --name axemc-alpine -p 22222:22 axemc-alpine:latest

axemc-centos:
	docker build -t axemc-centos -f ./centos/Dockerfile ./centos
	docker run -itd --name axemc-centos -p 22222:22 axemc-centos:latest

axemc-rocky:
	docker build -t axemc-rocky -f ./rocky/Dockerfile ./rocky
	docker run -itd --name axemc-rocky -p 22222:22 axemc-rocky:latest

axemc-ubuntu:
	docker build -t axemc-ubuntu:latest -f ./ubuntu/Dockerfile ./ubuntu
	docker run -itd --name axemc-ubuntu -p 22222:22 axemc-ubuntu:latest
