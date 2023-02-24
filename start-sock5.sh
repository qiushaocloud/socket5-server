if [ ! -f "/etc/danted.conf" ];then
    echo "file /etc/danted.conf is not exist"
    if [ "$SOCKS_USER" ] && [ "$SOCKS_PASS" ]; then
        cp -a /etc/danted.conf.user /etc/danted.conf
    else
        cp -a /etc/danted.conf.nouser /etc/danted.conf
    fi

    sed -i "s/<SOCKS_PORT>/$SOCKS_PORT/" /etc/danted.conf
fi


danted -f /etc/danted.conf -D