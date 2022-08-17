
build-all: axemc-alpine axemc-centos axemc-rocky axemc-ubuntu

axemc-alpine:
	docker build -t axemc-alpine -f ./alpine/Dockerfile ./alpine

axemc-centos:
	docker build -t axemc-centos -f ./centos/Dockerfile ./centos

axemc-rocky:
	docker build -t axemc-rocky -f ./rocky/Dockerfile ./rocky

axemc-ubuntu:
	docker build -t axemc-ubuntu:latest -f ./ubuntu/Dockerfile ./ubuntu
	docker run -itd --name axemc-ubuntu -p 22222:22 axemc-ubuntu:latest
