#!/bin/bash
HOSTNAME='127.0.0.1';
PORT='3306';
USERNAME='root';
PASSWORD='wolflink2015';
DBNAME='shadowsocks';
TABLENAME='user';
#following is  import sql file to database
SQLNAME='shadowsocks.sql';
DIR='/root'
echo  ${HOSTNAME},$PORT,$USER,$PASSWORD,$DBNAME,$TABLENAME
#create 
create_db_sql="CREATE  DATABASE IF NOT EXISTS ${DBNAME}"
mysql -h${HOSTNAME}   -P${PORT}   -u${USERNAME} -p${PASSWORD} -e "${create_db_sql}"
#inset 
insert="insert into mysql.user(Host,User,Password) values ('localhost','wolflink',password('wolflink2015'));"
mysql -h${HOSTNAME}   -P${PORT}   -u${USERNAME} -p${PASSWORD} -e "${insert}"
#
grant="grant all privileges on shadowsocks.* to 'wolflink'@'%' identified by 'wolflink2015' with grant option;"
mysql -h${HOSTNAME}   -P${PORT}   -u${USERNAME} -p${PASSWORD} -e "${grant}"
#
flush="flush privileges;"
mysql -h${HOSTNAME}   -P${PORT}   -u${USERNAME} -p${PASSWORD} -e "${flush}"
#
mysql -h${HOSTNAME} -P${PORT}  -u${USERNAME} -p${PASSWORD} -D ${DBNAME}  < $DIR/$SQLNAME 

#importsql="source ${DIR}${SQLNAME}"
#mysql -h${HOSTNAME} -P${PORT}  -u${USERNAME} -p${PASSWORD} -D ${DBNAME} -e "${importsql}"
echo 
echo "3.database SUCCESS"
echo
