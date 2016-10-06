#!/usr/bin/env sh
ssh-keygen -A
/usr/bin/supervisord -c /etc/supervisor/supervisord.conf
