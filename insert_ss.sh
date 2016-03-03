#!/bin/bash

mysqllogin="mysql -uwolflink -pwolflink2015"
port=50201
while test $port -le 50500
do
$mysqllogin -e "INSERT INTO shadowsocks.user VALUES ('', 'wolflink', 'wolflink239f0e', 'SZDgaqASAs8', '1410609560', '0', '0', '10737418240', $port, '1', '1', '7', '0', '0');"
let port=$port+1
done
echo "success."
