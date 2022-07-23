FROM rockylinux:latest

MAINTAINER axemc:192119741@qq.com
# https://blog.csdn.net/weixin_41831919/article/details/109035936

RUN set -x && \
  yum -y install openssl openssh-server openssh-clients && \
  sed -i "s/#PermitEmptyPasswords no/PermitEmptyPasswords yes/g" /etc/ssh/sshd_config && \
  sed -i "s/#PermitRootLogin yes/PermitRootLogin yes/g" /etc/ssh/sshd_config && \
  echo root:123456 | chpasswd
