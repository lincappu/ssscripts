#!/bin/bash
yum -y install mariadb-server mariadb
systemctl start mariadb.service
systemctl enable mariadb.service
./mysql-expect.exp
echo
echo "2.mariadb  install SUCCESS"
echo

