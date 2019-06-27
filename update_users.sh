#!/bin/bash

cp /etc/ftp_users.txt /etc/vsftpd/virtual_users.txt
echo -e "${FTP_USER}\n${FTP_PASS}" >> /etc/vsftpd/virtual_users.txt
/usr/bin/db_load -T -t hash -f /etc/vsftpd/virtual_users.txt /etc/vsftpd/virtual_users.db
