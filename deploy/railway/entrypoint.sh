#!/bin/sh
set -eu

mkdir -p /data
chown -R wealthfolio:wealthfolio /data 2>/dev/null || chmod 0777 /data

exec su-exec wealthfolio:wealthfolio /usr/local/bin/wealthfolio-server
