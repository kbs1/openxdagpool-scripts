#!/bin/bash

CURRENTXDAG="`cat /home/pool/CURRENT_XDAG`"

cd /home/pool/xdag"$CURRENTXDAG"/cheatcoin
echo -e "stats\nexit\n" | ./xdag -i > /var/www/pool/stats_tmp.txt
echo -e "miners\nexit\n" | ./xdag -i > /var/www/pool/miners_tmp.txt

sleep 1

cp /var/www/pool/stats_tmp.txt /var/www/pool/stats.txt
cp /var/www/pool/miners_tmp.txt /var/www/pool/miners.txt
