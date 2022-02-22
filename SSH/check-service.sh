#!/bin/sh
# usage: /path/to/script/check-service.sh <service name>
# example: ~/check-service.sh apache2

service $1 status 2>&1 1>/dev/null

if [ $? -ne 0 ]; then
  echo "1:$?:$1 down"
else
  echo "0:$?:OK"
fi