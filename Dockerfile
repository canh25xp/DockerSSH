FROM ubuntu:24.04

# Install required packages
RUN apt update && \
    apt install -y openssh-server python3 && \
    mkdir -p /var/run/sshd && \
    # SSH configuration
    sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config

# Copy users configuration
COPY users.json /users.json

# Copy entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 22

ENTRYPOINT ["/entrypoint.sh"]
