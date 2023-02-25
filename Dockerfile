FROM ubuntu:16.04

# 设置环境变量
ENV SOCKS_USER ""
ENV SOCKS_PASS ""
ENV SOCKS_PORT 1080

# 安装所需的软件包
RUN apt-get update && apt-get install -y dante-server
# RUN apt update && apt install -y vim net-tools iputils-ping psmisc

RUN mv /etc/danted.conf /etc/danted.conf.defaultbak

# 复制danted.conf文件
COPY danted.conf.user /etc/danted.conf.user
COPY danted.conf.nouser /etc/danted.conf.nouser
COPY start-sock5.sh /root/start-sock5.sh

# 运行Dante Server
CMD bash /root/start-sock5.sh
