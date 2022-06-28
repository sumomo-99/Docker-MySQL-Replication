#!/bin/sh

mysql -uroot -p$MYSQL_ROOT_PASSWORD -e" \
    CHANGE MASTER TO \
        MASTER_HOST = '$MAIN_HOST', \
        MASTER_PORT = 3306, \
        MASTER_USER = '$REPLICA_USER', \
        MASTER_PASSWORD = '$REPLICA_PASSWORD', \
        MASTER_AUTO_POSITION = 1; \
    START SLAVE; \
"