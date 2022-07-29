
build-all: axemc-alpine axemc-centos axemc-rocky axemc-ubuntu

axemc-alpine:
	docker build -t axemc-alpine -f ./alpine/Dockerfile ./alpine

axemc-centos:
	docker build -t axemc-centos -f ./centos/Dockerfile ./centos

axemc-rocky:
	docker build -t axemc-rocky -f ./rocky/Dockerfile ./rocky

axemc-ubuntu:
	docker build -t axemc-ubuntu -f ./ubuntu/Dockerfile ./ubuntu
