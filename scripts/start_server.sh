#!/bin/bash
cd /home/ubuntu/dyn
./gradlew execute > server.out 2>&1 &
echo $! > /home/ubuntu/dyn/dynapp.pid
