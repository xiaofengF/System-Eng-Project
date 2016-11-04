#!/bin/sh

sudo rm -rf /home/ubuntu/server
git clone https://github.com/sekitk/sc1_list_manager.git /home/ubuntu/server
cp -f /home/ubuntu/application.conf /home/ubuntu/server/conf/
cd /home/ubuntu/server/  && play run