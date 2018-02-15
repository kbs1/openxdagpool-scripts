#!/bin/bash

./xdag_dump_executables.sh

read -p "Are you sure the deamon in this folder is not running? [no]  " SURE

if [ "$SURE" != "y" -a "$SURE" != "Y" -a "$SURE" != "yes" -a "$SURE" != "Y" ]; then
        echo Exiting.
        exit 1
fi

echo Updating source...
git pull

echo Compiling...
make

echo Done.

./xdag_dump_executables.sh
