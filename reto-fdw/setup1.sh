#!/bin/bash
zypper -q in -y postgresql96 postgresql96-server postgresql96-contrib
systemctl enable postgresql
service postgresql start
echo "host     all            all             192.168.251.0/24         md5" >> /var/lib/pgsql/data/pg_hba.conf
sed -i -e "s/#listen_addresses = 'localhost'/listen_addresses = '127.0.0.1,${1}'/" /var/lib/pgsql/data/postgresql.conf
service postgresql restart
sudo -u postgres psql -f /tmp/db.sql
