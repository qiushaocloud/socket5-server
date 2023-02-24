if [ "$SOCKS_USER" ] && [ "$SOCKS_PASS" ]; then
    cp -a /etc/danted.conf.user /etc/danted.conf
else
    cp -a /etc/danted.conf.nouser /etc/danted.conf
fi

danted -f /etc/danted.conf -D