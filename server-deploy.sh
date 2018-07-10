#!/bin/bash
yum update -y
yum install httpd git stress -y
cd /etc/httpd/conf
cp httpd.conf httpdconfbackup.conf
rm -rf httpd.conf
wget https://s3-us-west-2.amazonaws.com/jdm-mini-bucket/httpd.conf
cd /var/www/html
git clone https://github.com/jMac029/aws-website-deploy.git
cd /etc
wget https://s3-us-west-2.amazonaws.com/jdm-mini-bucket/crontab
service httpd start
chkconfig httpd on