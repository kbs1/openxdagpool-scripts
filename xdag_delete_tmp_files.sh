#!/bin/bash

for xdag in 1 2; do
        if ls /home/pool/xdag${xdag}/cheatcoin/xdag-tmp-* 1> /dev/null 2>&1; then
                FILES=`find /home/pool/xdag${xdag}/cheatcoin -iname xdag-tmp-\* -mtime +1`
                if [[ $FILES != "" ]]; then
                        LATEST=`ls -t /home/pool/xdag${xdag}/cheatcoin/xdag-tmp-* | head -n 1`
                        if [[ $FILES = *${LATEST}* ]]; then
                                echo xdag${xdag} latest file list contains current file, skipping "($LATEST)"
                        else
                                echo Removing files from xdag${xdag}: $FILES
                                rm $FILES
                        fi
                else
                        echo "No temp files matching -mtime criteria in" xdag${xdag}.
                fi
        else
                echo "No temp files in" xdag${xdag}.
        fi
done
