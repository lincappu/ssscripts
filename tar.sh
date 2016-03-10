#!/bin/bash
if [ -f './ssscripts.tar.gz' ]; then
         rm -rf ./ssscripts.tar.gz
fi 
tar -zcvf  ssscripts.tar.gz   breakall_manyuser_new  denyiplist.sh    insert_ss.sh  mysql-expect.exp  mysql-expect.sh  mysql_sql.sh shadowsocks.sql  softs.sh   ss.sh    supervisord.conf  sysctl.conf  expect_scp-many 
if [ -f '/root/ssscripts.tar.gz' ]; then 
	rm -rf /root/ssscripts.tar.gz
fi
cp -Rfvpr  ./ssscripts.tar.gz  /root/ssscripts.tar.gz
#cp -Rrfvp  ./first.sh  /root/first.sh
echo "DOWN"
