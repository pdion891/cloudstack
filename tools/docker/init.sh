#!/bin/bash
#
# update database connection
# start cloudstack-management server
/usr/bin/cloudstack-setup-databases cloud:password@$MYSQL_PORT_3306_TCP_ADDR
service cloudstack-management start
tail -f /var/log/cloudstack/management/management-server.log