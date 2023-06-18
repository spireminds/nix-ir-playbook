#!/bin/bash
NI_SHELLS="/sbin/nologin|/sbin/false|/sbin/true|/bin/sync|/sbin/shutdown|/sbin/halt"

echo "Non Interactive / Service Accounts"
echo "**********************************"
egrep $NI_SHELLS /etc/passwd | cut -d: -f1 

echo ""
echo "" 
echo ""
echo "Interactive Users"
echo "*****************"
egrep -v $NI_SHELLS /etc/passwd | cut -d: -f1

echo ""
echo ""
echo ""
