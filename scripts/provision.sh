#!/usr/bin/env bash

DBPASS=root

debconf-set-selections <<< "mysql-server mysql-server/root_password password $DBPASS"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $DBPASS"

sudo apt-get update
sudo apt-get -y install mysql-server

mysql -u root -p$DBPASS -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '$DBPASS' WITH GRANT OPTION; FLUSH PRIVILEGES;"

cp /etc/mysql/my.cnf /vagrant/shared/my.cnf.bkp
cp /vagrant/shared/my.cnf /etc/mysql/my.cnf

sudo systemctl restart mysql.service
