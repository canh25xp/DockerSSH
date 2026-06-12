FROM ghcr.io/canh25xp/dotfiles-debian:minimal

USER root

# Copy users configuration
COPY users.json /users.json

# Copy dotfiles
COPY dotfiles/ /dotfiles/

# Copy entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN mkdir -p /var/log && touch /var/log/lastlog && chmod 644 /var/log/lastlog

EXPOSE 22

ENTRYPOINT ["/entrypoint.sh"]
