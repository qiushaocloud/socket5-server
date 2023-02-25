#!/bin/bash

echo "start server"

if [ ! -f "/etc/danted.conf" ];then
    echo "file /etc/danted.conf is not exist"
    if [ "$SOCKS_USER" ] && [ "$SOCKS_PASS" ]; then
        cp -a /etc/danted.conf.user /etc/danted.conf
        sed -i "s/<SOCKS_USER>/$SOCKS_USER/g" /etc/danted.conf
        sed -i "s/<SOCKS_PASS>/$SOCKS_PASS/g" /etc/danted.conf
    else
        cp -a /etc/danted.conf.nouser /etc/danted.conf
    fi

    sed -i "s/<SOCKS_PORT>/$SOCKS_PORT/g" /etc/danted.conf

    echo "cat /etc/danted.conf"
    cat /etc/danted.conf
fi


if [ "$SOCKS_USER" ] && [ "$SOCKS_PASS" ]; then
    if id "$SOCKS_USER" >/dev/null 2>&1; then
        echo "User $SOCKS_USER exists"
    else
        echo "User $SOCKS_USER does not exist"
        groupadd $SOCKS_USER
        useradd -g $SOCKS_USER -s /bin/false -m $SOCKS_USER
        echo "$SOCKS_USER:$SOCKS_PASS" | chpasswd
    fi
fi

echo 'start danted'
danted -f /etc/danted.conf -D
echo 'finsh danted'

echo 'cat /var/log/danted.log'
cat /var/log/danted.log

echo 'netstat -ano'
netstat -ano

while true; do
  echo "check ...."
  sleep 300
done
