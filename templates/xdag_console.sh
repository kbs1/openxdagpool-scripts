#!/bin/bash

./xdag_dump_executables.sh

echo Starting console...
TZ=GMT ./xdag -i

./xdag_dump_executables.sh
