#!/bin/sh


mkdir /tmp/yurianiqbalramadhan
mkdir /tmp/yurianiqbalramadhan/backup_log
cd /home/yurianiqbalramadhan/
mkdir purwadhika_new
sudo cat /var/log/syslog | grep -i shutdown | tail -3 > /home/yurianiqbalramadhan/purwadhika_new/systemlog.txt
tar -czvf backup_log_$(date +'%m-%d-%Y').tar.gz /home/yurianiqbalramadhan/purwadhika_new/
ln /home/yurianiqbalramadhan/purwadhika_new/backup_log_$(date +'%m-%d-%Y').tar.gz /tmp/yurianiqbalramadhan/backup_log/
echo "success backup"

