#!/bin/bash
mkdir ~/purwadhika
mkdir -p /tmp/fadlypramadita/backup_log
cd ~/purwadhika
sudo cat /var/log/syslog | grep Shutdown | tail -n3 > ~/purwadhika/systemlog.txt

tanggal=$(date +%Y%m%d)
#echo $tanggal

#create tar
tar -czvf  ~/purwadhika/backuplog_$tanggal.tar.gz ~/purwadhika/systemlog.txt

#create hardlink
ln ~/purwadhika/backuplog_$tanggal.tar.gz /tmp/fadlypramadita/backup_log/backuplog_$tanggal.tar.gz

echo "done...."
