# socket5-server

#### 介绍
构建一个 socket5 服务器 docker 镜像，支持环境变量指定访问用户名、密码、端口。

#### docker-compose 使用说明
1.  执行命令授予执行脚本权限：`sed -i -e 's/\r$//' *.sh && chmod -R 755 *.sh`
2.  执行 `copy env.tpl .env`，并且配置 .env
3.  运行 ./run-docker.sh 【注：docker-compose 低版本识别不了 .env，需要进行升级，作者用的版本是: 1.29.2】
4.  查看日志: docker logs qiushaocloud-socket5-server

#### docker 使用说明
1. 运行命令: `docker run --name qiushaocloud-socket5-server -d -p 1080:1080 -e SOCKS_USER= -e SOCKS_PASS= -e SOCKS_PORT=1080 qiushaocloud/socket5-server`
2.  查看日志: docker logs qiushaocloud-socket5-server

#### 环境变量
```
# SOCKS_USER、SOCKS_PASS 和 SOCKS_PORT 来指定用户名、密码和端口。
SOCKS_USER = 
SOCKS_PASS = 
SOCKS_PORT = 1080
```

#### 参与贡献
1.  Fork 本仓库
2.  新建 Feat_xxx 分支
3.  提交代码
4.  新建 Pull Request


#### 分享者信息
1. 分享者邮箱: qiushaocloud@126.com
2. [分享者网站](https://www.qiushaocloud.top)
3. [分享者自己搭建的 gitlab](https://gitlab.qiushaocloud.top/qiushaocloud) 
3. [分享者 gitee](https://gitee.com/qiushaocloud/dashboard/projects) 
3. [分享者 github](https://github.com/qiushaocloud?tab=repositories) 