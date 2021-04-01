#! /bin/bash

mkdir -p ~/purwadhika
cur_user=$(whoami)
mkdir -p /tmp/${cur_user}/

cd ~/purwadhika

tail -3 /var/log/syslog > ~/purwadhika/systemlog.txt
tar -czvf backuplog_20210401.tar.gz ~/purwadhika/systemlog.txt

echo 'Success running script'
