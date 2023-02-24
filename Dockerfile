FROM ubuntu:16.04

ENV SOCKS_USER= \
    SOCKS_PASS= \
    SOCKS_PORT=1080

RUN apt-get update && \
    apt-get install -y dante-server && \
    rm -rf /var/lib/apt/lists/*

COPY sockd.conf /etc/

EXPOSE 1080

CMD ["sh", "-c", "echo $SOCKS_USER:$SOCKS_PASS | chpasswd && usermod -s /bin/false sockd && sockd -N 1 -f /etc/sockd.conf -D"]