FROM ubuntu:latest

# 设置环境变量
ENV SOCKS_USER ""
ENV SOCKS_PASS ""
ENV SOCKS_PORT 1080

RUN apt-get update && apt-get install -y dante-server
RUN apt install -y net-tools
# RUN apt update && apt install -y vim net-tools iputils-ping psmisc

RUN mv /etc/danted.conf /etc/danted.conf.defaultbak

COPY danted.conf.user /etc/danted.conf.user
COPY danted.conf.nouser /etc/danted.conf.nouser
COPY bootstarp.sh /root/bootstarp.sh

RUN chmod 777 /root/bootstarp.sh

CMD /root/bootstarp.sh
