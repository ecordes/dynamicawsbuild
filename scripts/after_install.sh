#!/bin/bash
# Set ownership for all folders
chown -R ubuntu:ubuntu /home/ubuntu/dyn/

cd /home/ubuntu/dyn/dynamicruntime
git pull
