#!/bin/sh
pkill sshd
sshd
echo 'SSH server running.'

#To access Termux files using SFTP from a client.
# sftp -P 8022 192.168.1.29
