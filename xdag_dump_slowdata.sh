#!/bin/bash

grep -Pha "`/usr/bin/php /home/pool/scripts/generate_last_days_regex.php`"'.+:MESS]  Xfer  : from [0-9a-zA-Z+/]{32}' /home/pool/xdag1/client/xdag.log /home/pool/xdag2/client/xdag.log | sort > /var/www/pool/payouts_tmp.txt

sleep 1

cp /var/www/pool/payouts_tmp.txt /var/www/pool/payouts.txt
