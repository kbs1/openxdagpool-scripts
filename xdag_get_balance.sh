#!/bin/bash

if [[ "$1" =~ ^[a-zA-Z0-9/+]{32}$ ]]; then
        CURRENTXDAG="`cat /home/pool/CURRENT_XDAG`"
        cd /home/pool/xdag"$CURRENTXDAG"/client
        echo -e "balance $1\nexit\n" | ./xdag -i
else
        echo "Invalid address $1"
        exit 1
fi
