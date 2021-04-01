mkdir -p ~/purwadhika
mkdir -p /tmp/harits/backup_log
cd ~/purwadhika
sudo grep -i "shutdown" /var/log/syslog | tail -3 > systemlog.txt
tar czvf backuplog_20210401.tar.gz systemlog.txt
ln backuplog_20210401.tar.gz /tmp/harits/backup_log/backuplog_20210401
echo "backup sukses!"
