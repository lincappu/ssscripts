#!/bin/bash
#bash /root/denyiplist.sh
#echo "4.denyiplist  SUCCESS"
bash /root/insert_ss.sh
echo "5.insert_ss SUCCESS"
nohup python /root/breakall_manyuser_new/server.py   >> /var/log/shadowsocks.log   2>&1    &
echo  "6.start SS  SUCCESS"
cp -f /root/supervisord.conf /etc/supervisord.conf
echo  "7.autostart  SUCCESS"
cp  -f /root/sysctl.conf /etc/sysctl.conf
systemctl start  supervisord.service
systemctl enable  supervisord.service
echo 
touch /root/netstat 
netstat -tunlp > /root/netstat
tail -n 10 /root/netstat
echo 
tail -n 10 /var/log/shadowsocks.log
echo 
ps -aux | grep python
PID=$(ps -A |  grep 'python'| awk '{print $1}')


