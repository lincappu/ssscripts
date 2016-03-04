#!/bin/bash
if [ ! -f "/root/ss.tar.gz" ]; then
        echo "this server no ss-file.please check from  source server!"
        exit 0 
fi 
tar -zxvf /root/ss.tar.gz
bash /root/softs.sh
bash  /root/mysql-expect.sh
bash  /root/mysql_sql.sh
bash /root/ss.sh
