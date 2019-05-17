#!/bin/bash

sudo apt install -y jq mysql-client-core-5.7
echo "UserParameter=Mysql.Server-Status, mysql --defaults-file=/etc/zabbix/.my.cnf --defaults-group-suffix=_monitor" > /etc/zabbix/zabbix_agentd.d/userparameter_mysql_template.conf
#echo "" > /etc/zabbix/.my.cnf
cp /root/.my.cnf /etc/zabbix/.my.cnf
service zabbix-agent restart
