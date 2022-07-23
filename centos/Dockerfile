FROM centos:latest

MAINTAINER axemc:192119741@qq.com

RUN set -x && \
  yum -y install openssl openssh-server openssh-clients && \
  sed -i "s/#PermitEmptyPasswords no/PermitEmptyPasswords yes/g" /etc/ssh/sshd_config && \
  sed -i "s/#PermitRootLogin yes/PermitRootLogin yes/g" /etc/ssh/sshd_config && \
  echo root:123456 | chpasswd
