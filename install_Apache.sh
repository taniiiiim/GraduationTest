#!bin/bash

yum -y install httpd

#Vagrantfileを編集する

   config.vm.network "private_network", ip: "192.168.33.10"

#httpd/config fileを編集する
/etc/httpd/conf/httpd.conf

<Directory />
Options FollowSymLinks
AllowOverride ALL
</Directory>

ServerName xxx.xxx.xxx.xxx:80

#httpdをstart, firewallをstopする

#/var/www/htmlにindex.htmlを作成する

