
build-all: alpine-build centos-build rocky-build ubuntu-build

alpine-build:
	docker build -t axemc-alpine -f ./alpine/Dockerfile ./alpine

alpine-run:
	docker run -itd --privileged=true --name axemc-alpine -p 22222:22 axemc-alpine:latest /sbin/init

centos-build:
	docker build -t axemc-centos -f ./centos/Dockerfile ./centos

centos-run:
	docker run -itd --privileged=true --name axemc-centos -p 22222:22 axemc-centos:latest /sbin/init

rocky-build:
	docker build -t axemc-rocky -f ./rocky/Dockerfile ./rocky

rocky-run:
	docker run -itd --privileged=true --name axemc-rocky -p 22222:22 axemc-rocky:latest /sbin/init

ubuntu-build:
	docker build -t axemc-ubuntu:latest -f ./ubuntu/Dockerfile ./ubuntu

ubuntu-run:
	docker run -itd --privileged=true --name axemc-ubuntu -p 22222:22 axemc-ubuntu:latest /sbin/init
