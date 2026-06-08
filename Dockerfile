FROM ubuntu:24.04

ARG USERNAME
ARG PASSWORD

RUN apt update && \
    apt install -y openssh-server && \
    mkdir -p /var/run/sshd && \
    useradd -m -s /bin/bash ${USERNAME} && \
    echo "${USERNAME}:${PASSWORD}" | chpasswd && \
    sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
