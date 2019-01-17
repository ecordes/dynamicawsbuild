#!/bin/bash

if [ -f "/home/ubuntu/dyn/dynapp.pid" ]; then
  pid=`cat /home/ubuntu/dyn/dynapp.pid`
fi

if [ ! -z $pid ]; then
  echo "Stopping server"
  if kill -9 $pid; then
    echo "Unable to kill process $pid"
  fi
  exit 0
fi

exit 0