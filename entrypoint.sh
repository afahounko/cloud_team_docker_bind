#!/bin/sh
OPTIONS=$@
chown -R root:named /etc/named /var/run/named
chown -R named:named /var/cache/bind
chmod -R 770 /var/cache/named /var/run/named
chmod -R 750 /etc/named
# Run in foreground and log to STDERR (console):
exec /usr/sbin/named -c /etc/named/named.conf -g -u named $OPTIONS
#exec /usr/sbin/named -c /etc/named.conf -g -u named $OPTIONS
