#!/bin/sh

tee /etc/stunnel/stunnel.conf <<EOF
[redis-cli]
client = yes
accept = 127.0.0.1:6380
connect = $REDIS_HOST:$REDIS_PORT
EOF

stunnel

redis-cli -p $REDIS_PORT -a $REDIS_PASSWORD