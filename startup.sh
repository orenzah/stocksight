#!/bin/bash
set -uxe -o pipefail
echo "*******************************************************"
echo

echo "stocksight docker container started"
echo "shell into the container and run python sentiment.py -h"
echo
echo "*******************************************************"

cp  /app/config/* /app/.  || true

while true; do
    sleep 60
    echo "stocksight alive"
done
