#!/bin/sh

## Write out config file
cat >> /tmp/mysqlrouter.conf << EOF
[DEFAULT]
logging_folder=
connect_timeout=30
read_timeout=30

[logger]
level = INFO

[routing:failover]
bind_address=0.0.0.0
bind_port=6446
destinations=${DESTINATIONS}
routing_strategy=next-available
EOF

exec "$@"
