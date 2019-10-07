#!/bin/bash

echo "SHELL=/bin/bash" > /etc/crontab
echo "PATH=/sbin:/bin:/usr/sbin:/usr/bin" >> /etc/crontab
echo "MAILTO=root" >> /etc/crontab

echo "$CRONTAB" >> /etc/crontab

echo cat /etc/crontab
cat /etc/crontab

exec "$@"
