mkdir purwadhika
mkdir /tmp/backup_log_emha
cd purwadhika
sudo cat /var/log/syslog | grep Shutdown | tail -3 > systemlog.txt
tar -czvf backuplog_$(date +%d-%m-%Y).tar.gz systemlog.txt
#gzip -c backuplog_25032021.tar backuplog_25032021.tar.gz
sudo ln backuplog_$(date +%d-%m-%Y).tar.gz /tmp/backup_log_emha
echo "Alhamdulillah Sukses"
