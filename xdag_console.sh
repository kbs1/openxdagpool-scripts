#!/bin/bash

pidof xdag > /dev/null

if [ "$?" -ne 0 ]; then
        echo "Daemon not running! Start it first."
        exit 1
fi

cd ..

CURRENTXDAG="`cat ./CURRENT_XDAG`"

echo "Starting console (xdag$CURRENTXDAG)..."
cd ./xdag"$CURRENTXDAG"/cheatcoin
./xdag_console.sh
