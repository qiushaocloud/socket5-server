FROM ubuntu:latest

# 安装所需的软件包
RUN apt-get update && apt-get install -y dante-server

# 设置环境变量
ENV SOCKS_USER ""
ENV SOCKS_PASS ""
ENV SOCKS_PORT 1080

# 复制danted.conf文件
COPY danted.conf /etc/danted.conf

RUN chmod 600 /etc/danted.conf

# 运行Dante Server
CMD ["danted", "-D"]
