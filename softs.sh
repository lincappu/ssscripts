#!/bin/bash
yum update  -y 
yum install epel-release -y
yum install python-setuptools m2crypto supervisor git  -y
easy_install pip
pip install cymysql 
pip install shadowsocks
yum install -y expect  expect-devel
yum install -y  net-tools
yum install -y  vim 
echo 
echo "1.softs install SUCCESS"
echo
