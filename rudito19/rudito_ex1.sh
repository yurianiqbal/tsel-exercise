ts=`date +"%Y%m%d"`
mkdir purwadika
sudo mkdir /tmp/backup_log_rudito
sudo cat /var/log/syslog | grep Shutdown | tail -3 > /home/rudito_ex1/purwadika/systemlog.txt
tar -czvf backuplog_$ts.tar.gz /home/rudito_ex1/purwadika/systemlog.txt
sudo ln backuplog_$ts.tar.gz /tmp/backup_log_rudito/
echo "sukses running script"
