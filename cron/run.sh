#!/bin/bash
set -x
touch /cron.log
tail -F /cron.log &

# 将环境变量保存至 /etc/default/locale
rm -rf /etc/default/locale
env >> /etc/default/locale

echo "${CRON} >> /cron.log 2>&1" >> /etc/crontab
crontab  /etc/crontab
echo "=> Running cron job"
exec cron -f