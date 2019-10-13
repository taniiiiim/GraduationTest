#!/bin/bash

#MySQLのインストール
sudo yum remove mariadb-libs
sudo rm -rf /var/lib/mysql

sudo rpm -ivh http://dev.mysql.com/get/mysql57-community-release-el7-8.noarch.rpm
sudo yum install mysql-community-server

#起動・パスワード確認
sudo systemctl start mysqld.service
sudo cat /var/log/mysqld.log | grep password
mysql_secure_installation
mysql -u root -p

#mysql2のインストール
sudo yum install mysql-devel
gem install mysql2 -v '0.5.2' --source 'https://rubygems.org/'
