FROM ubuntu:latest

MAINTAINER axemc:192119741@qq.com

# 参考文档L：
# https://blog.csdn.net/winter2121/article/details/118223637
# https://www.jianshu.com/p/889dc983be21

RUN apt update -y && apt upgrade -y && apt install vim -y && apt install openssh-server -y
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
RUN echo "root:1234" | chpasswd

ENTRYPOINT service ssh restart && bash
