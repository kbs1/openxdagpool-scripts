#!/bin/bash

./xdag_dump_executables.sh

read -p "Run with -r option? [yes] " WITHRUN

if [ "$WITHRUN" == "n" -o "$WITHRUN" == "N" -o "$WITHRUN" == "no" -o "$WITHRUN" == "NO" ]; then
        echo Starting daemon...
        TZ=GMT ./xdag -d -p 95.105.233.208:16775 -P 95.105.233.208:13654:20000:0.5:1:1:200:0.5
else
        echo "Starting daemon... (with -r option)"
        TZ=GMT ./xdag -d -r -p 95.105.233.208:16775 -P 95.105.233.208:13654:20000:0.5:1:1:200:0.5
fi

./xdag_dump_executables.sh
