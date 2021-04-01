#!/bin/bash

mkdir -p /home/nurmankhakim/purwadhika_nurmankhakim
sudo mkdir -p /tmp/nurmankhakim/backup_log
cd /home/nurmankhakim/purwadhika_nurmankhakim
touch systemlog.txt
sudo head -3 /var/log/syslog | tee systemlog.txt
date_now=$(date +%Y-%m-%d_%H%M$S)
filename="backuplog_nurmankhakim_$date_now"
echo "$filename"
tar -c systemlog.txt -f "$filename.tar"
gzip -kv "$filename.tar"
sudo ln "$filename.tar.gz" /tmp/nurmankhakim/backup_log
echo "exercisebash success"

echo "test perubahan exercise git"
