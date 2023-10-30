#!/bin/bash
apt update
apt install mongodb -y
systemctl start mongodb
systemctl enable mongodb
sleep 5
CHECK_MONGO=`systemctl list-units |grep mongo |grep running`

if [ -n "$CHECK_MONGO"  ]; then
echo "---MongoDB installed and running---"
else echo "---MongoDB not installed and running---"
fi
