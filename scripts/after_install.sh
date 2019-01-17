#!/bin/bash

defaultInstallDir="/home/ubuntu"
if [ -z $1 ]; then
  installDir=$defaultInstallDir
else
  installDir=$1
fi

echo "The install directory is $installDir"

if [ ! -d "$installDir/dyn" ]; then
  mkdir -p $installDir/dyn
fi

# Set ownership for all folders
chown -R ubuntu:ubuntu $installDir/dyn/

# Get the source from the git repository
cd $installDir/dyn
if [ ! -d "$installDir/dyn/dynamicruntime" ]; then
  echo "Creating dynamicruntime repository by cloning"
  git clone https://github.com/sampwhite/dynamicruntime.git
else
  echo "Update dynamicruntime repository from git"
  cd dynamicruntime
  git pull
fi
