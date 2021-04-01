#!/bin/bash
mkdir $HOME/purwadhika
mkdir /tmp/romeo_backup_log
cd $HOME/purwadhika
tail -n 3 /var/log/syslog > systemlog.txt
date="$(date +"%Y%m%d")"
tar zcvf backuplog_${date}.tar.gz $HOME/purwadhika/systemlog.txt
ln $HOME/purwadhika/backuplog_${date}.tar.gz /tmp/romeo_backuplog_${date}.tar.gz 
if [ -f /tmp/romeo_backuplog_${date}.tar.gz ]; then
	        echo "backup success"
	else
		        echo "backup failed"
fi
