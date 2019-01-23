#!/bin/bash
  
while true
do
  STATUS=$(curl -s -o /dev/null -w '%{http_code}' http://localhost:7070/health/info | head -n 1 | grep 200)

  if [ $STATUS -eq 200 ]; then
    echo "DynamicRuntime Server is running."
    break
  else
    echo "Got $STATUS Server not running yet."
  fi

  sleep 10
done

