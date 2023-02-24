# socket5-server

## Introduction
Build a socket5 server docker image that supports specifying access username, password, and port through environment variables.

## docker-compose Usage
1. Grant execution script permission by running command: `sed -i -e 's/\r$//' *.sh && chmod -R 755 *.sh`
2. Run `copy env.tpl .env` and configure .env
3. Run `./run-docker.sh` 【Note: docker-compose lower version cannot recognize .env and needs to be upgraded. The version used by the author is: 1.29.2】
4. View logs: `docker logs qiushaocloud-socket5-server`

## docker Usage
1. Run command: `docker run --name qiushaocloud-socket5-server -d -p 1080:1080 -e SOCKS_USER= -e SOCKS_PASS= -e SOCKS_PORT=1080 qiushaocloud/socket5-server`
2. View logs: `docker logs qiushaocloud-socket5-server`

#### Environment variables
```
# SOCKS_USER, SOCKS_PASS, and SOCKS_PORT to specify the user name, password, and port.
SOCKS_USER = 
SOCKS_PASS = 
SOCKS_PORT = 1080
```

## Contributing
1. Fork this repository
2. Create a new branch named Feat_xxx
3. Submit code
4. Create a new Pull Request

## Sharer Information
1. Sharer email: qiushaocloud@126.com
2. [Sharer website](https://www.qiushaocloud.top)
3. [Sharer's self-built GitLab](https://gitlab.qiushaocloud.top/qiushaocloud)
4. [Sharer's Gitee](https://gitee.com/qiushaocloud/dashboard/projects)
5. [Sharer's GitHub](https://github.com/qiushaocloud?tab=repositories)
