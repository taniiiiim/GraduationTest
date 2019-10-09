#!/bin/bash

printf "install: --no-document \nupdate:  --no-document\n" >> ~/.gemrc
gem install rails -v 5.1.6
rails _5.1.6_ new hello_app

