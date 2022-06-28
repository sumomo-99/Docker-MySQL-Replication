#!/bin/sh
mysql -uroot -p$MYSQL_ROOT_PASSWORD -e"\
GRANT REPLICATION SLAVE, REPLICATION CLIENT ON *.* TO '$MYSQL_USER'@'%';\
GRANT SELECT ON performance_schema.* TO '$MYSQL_USER'@'%';\
"