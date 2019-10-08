#!/bin/bash

echo "SHELL=/bin/bash" > /etc/cron.d/sdi-cron
echo "PATH=/sbin:/bin:/usr/sbin:/usr/bin" >> /etc/cron.d/sdi-cron
echo "MAILTO=root" >> /etc/cron.d/sdi-cron

echo "$CRONTAB" >> /etc/cron.d/sdi-cron
chmod 0644 /etc/cron.d/sdi-cron
crontab /etc/cron.d/sdi-cron

exec "$@"
