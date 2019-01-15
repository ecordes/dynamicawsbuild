#!/bin/bash
pid=`cat /home/ubuntu/dyn/dynapp.pid`

kill -9 $pid
