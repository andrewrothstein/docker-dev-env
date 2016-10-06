#!/usr/bin/env sh
ssh-keygen -A
mkdir -p /var/run/sshd
/usr/local/bin/supervisord -c /etc/supervisor/supervisord.conf
