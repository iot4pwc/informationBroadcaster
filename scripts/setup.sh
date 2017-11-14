#!/bin/bash

sudo apt-get update
sudo apt-get install -y default-jre default-jdk
sudo chmod 777 /etc/environment
sudo echo "JAVA_HOME=\"/usr/lib/jvm/java-8-openjdk-amd64/jre\"" >> /etc/environment
source /etc/environment
# wget https://bintray.com/artifact/download/vertx/downloads/vert.x-3.4.2-full.tar.gz
# tar -zxf vert.x-3.4.2-full.tar.gz
# export PATH=~/vertx/bin:$PATH
HOST=$(ip route get 8.8.8.8 | awk '{print $NF; exit}')
export HOST
DB_USER_NAME='iot4pwc'
export DB_USER_NAME
DB_USER_PW='Heinz123!'
export DB_USER_PW

sudo ufw allow 37288
echo "#################################################################################"
echo "Please input the public ip and port of the MySQL instance: E.g 18.221.182.91:3306"
read MYSQL_URL
export MYSQL_URL