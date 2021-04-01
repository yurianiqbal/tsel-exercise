#!/bin/bash

mkdir -p ~/purwadhika
mkdir -p ~/tmp/backup_log
mkdir -p /tmp/backup_log_nafi

cd ~/purwadhika
sudo cat /var/log/syslog | grep -i shutdown | tail -3 > systemlog.txt 2>>systemlog_err.txt
date=$(date +'%d%m%Y')
tar cvfz backuplog_$date.tar.gz systemlog.txt
ln backuplog_$date.tar.gz /tmp/backup_log_nafi/backup_$date.tar.gz
echo "backup task $date is done"
