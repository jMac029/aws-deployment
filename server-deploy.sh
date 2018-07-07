#!/bin/bash
yum update -y
yum install httpd git stress -y
cd /etc/httpd/conf
cp httpd.conf httpdconfbackup.conf
rm -rf httpd.conf
aws s3 cp s3://jmac-bucket/httpd.conf /etc/httpd/conf
cd /var/www/html
git clone https://github.com/jMac029/aws-website-deploy.git
aws s3 cp s3://jmac-bucket/crontab /etc/
service httpd start
chkconfig httpd on