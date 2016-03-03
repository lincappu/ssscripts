#!/bin/bash
echo "##################################################################################################################"
echo "#Welcome! This script is to build for SS server. You only need to enter your server ip address and then enjoy it!#"
echo "#Author:superfls  Date:2016-02-23                                                                                #" 
echo "##################################################################################################################"
echo "BEGIN!"
read -p "Please input you SS server ip:"  IP
echo
echo   "Please make sure your server ip is:$IP"
read -p "[y/n]:" YN
echo "Your ip is legitimate,We have accepte"
echo "OK! Please wait"
echo $YN
echo $IP > /root/expect_scp-many/housts.list
rm -rf  /root/.ssh/known_hosts 
if [ -f '/root/expect.tar.gz' ]; then
         rm -rf /root/expect.tar.gz
fi 
bash  /root/expect_scp-many/expect_scp-many.sh    /root/expect_scp-many/housts.list
