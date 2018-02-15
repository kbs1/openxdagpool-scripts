#!/bin/bash

echo -n "xdag PIDs: "
pidof xdag

if [ "$?" -eq 0 ]; then
        for PID in `pidof xdag`; do
                echo -n xdag executable for pid "$PID: "
                readlink -f /proc/"$PID"/exe
        done
fi
