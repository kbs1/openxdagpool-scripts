#!/bin/bash

grep -Ph "`/usr/bin/php /home/pool/scripts/generate_last_days_regex.php`"'.+:MESS]  Xfer  : from [0-9a-zA-Z+/]{32}' /home/pool/xdag1/cheatcoin/xdag.log /home/pool/xdag2/cheatcoin/xdag.log | sort > /var/www/default/payouts_tmp.txt

sleep 1

cp /var/www/default/payouts_tmp.txt /var/www/default/payouts.txt
