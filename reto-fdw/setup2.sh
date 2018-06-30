#!/bin/bash
zypper -q in -y mariadb-server mariadb-client
systemctl enable mysql
service mysql start
mysql -u root < /tmp/db.sql
