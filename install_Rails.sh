#!/bin/bash

printf "install: --no-document \nupdate:  --no-document\n" >> ~/.gemrc
(rubyのバージョンは2.6.1で)

#gemをインストールする
gem install rails -v 5.1.6

#Rails appを起動する
rails _5.1.6_ new hello_app

#JavaScript runtimeをDLする
curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -
sudo yum -y install nodejs

#ポート番号3000をオープンにする
bundle exec rails s -p 3000 -b 'IPアドレス'
