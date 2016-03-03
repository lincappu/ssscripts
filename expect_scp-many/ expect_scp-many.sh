#!/bin/sh
echo "  This is  put file by scp and expect to  many mechine!"
echo "!!! you must input src_file in  file of expect_scp.exp!!!"
list_file=$1
cat $list_file | while read line 
do 
host=$(echo $line | awk '{print $1}')
echo 
echo "######Now Host Put Mechine:$host"
echo
chmod +x  /root/expect_scp-many/1-expect_scp.exp
chmod +x  /root/expect_scp-many/expect_scp.exp
cd /root/expect_scp-many/
./expect_scp.exp $host 
sleep 2
cd /root/expect_scp-many/
./1-expect_scp.exp $host 
echo "DOWN OK!"
done
