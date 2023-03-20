#!/bin/bash
# Simple script to block websites
# Pass in website as first argument
echo "127.0.0.1 www.$1.com
::1 www.$1.com
127.0.0.1 http://www.$1.com
::1 http://www.$1.com
127.0.0.1 $1.com
::1 $1.com" >> /etc/hosts
# Flush the DNS cache
dscacheutil -flushcache
