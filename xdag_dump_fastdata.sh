#!/bin/bash

CURRENTXDAG="`cat /home/pool/CURRENT_XDAG`"

cd /home/pool/xdag"$CURRENTXDAG"/cheatcoin
echo -e "stats\nexit\n" | ./xdag -i > /var/www/default/stats_tmp.txt
echo -e "miners\nexit\n" | ./xdag -i > /var/www/default/miners_tmp.txt

sleep 1

cp /var/www/default/stats_tmp.txt /var/www/default/stats.txt
cp /var/www/default/miners_tmp.txt /var/www/default/miners.txt
