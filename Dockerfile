FROM debian:unstable

# Install required packages
RUN apt update && \
    apt install -y \
        bash-completion \
        bat \
        btm \
        curl \
        duf \
        eza \
        fastfetch \
        fd-find \
        fzf \
        gh \
        git \
        git-lfs \
        httpie \
        jq \
        neovim \
        nodejs \
        npm \
        p7zip \
        starship \
        tealdeer \
        tmux \
        zoxide \
        openssh-server && \
    rm -rf /var/lib/apt/lists/* && \
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
