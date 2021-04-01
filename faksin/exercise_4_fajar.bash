#!/bin/bash
HOME=/home/linux_lutfieff
tanggal=`date +"%Y%m%d"`
mkdir -p $HOME/purwadhika
mkdir -p /tmp/lutfi_backup_log
cd $HOME/purwadhika
cat /var/log/syslog |grep -i systemd |tail -3 > systemlog.txt
tar cvf backuplog_${tanggal}.tar.gz systemlog.txt
ln backuplog_${tanggal}.tar.gz /tmp/lutfi_backup_log/backuplog_${tanggal}.tar.gz
echo "SAKSES"