FROM alpine:latest

MAINTAINER axemc:192119741@qq.com

# 参考文档:
# https://blog.csdn.net/AMimiDou_212/article/details/106502393

RUN apk update && apk upgrade && apk add vim openssh \
	&& sed -i "s/#PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config \
	&& ssh-keygen -t dsa -P "" -f /etc/ssh/ssh_host_dsa_key \
	&& ssh-keygen -t rsa -P "" -f /etc/ssh/ssh_host_rsa_key \
	&& ssh-keygen -t ecdsa -P "" -f /etc/ssh/ssh_host_ecdsa_key \
	&& ssh-keygen -t ed25519 -P "" -f /etc/ssh/ssh_host_ed25519_key \
	&& echo "root:1234" | chpasswd

CMD ["/usr/sbin/sshd", "-D"]
