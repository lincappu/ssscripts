#!/bin/bash
bash /root/denyiplist.sh
echo "4.denyiplist  SUCCESS"
bash /root/inset_ss.sh
echo "5.insert_ss SUCCESS"
nohup python server.py   >> /var/log/shadowsocks.log   2>&1    &
echo  "6.start SS  SUCCESS"
cp -f /root/supervisord.conf /etc/supervisord.conf
echo  "6.autostart  SUCCESS"
cp  -f /root/sysctl.conf /etc/sysctl.conf
