#!/bin/bash
if [ ! -e /usr/lib/apt/methods/https ]; then
  apt-get update
  apt-get install -y apt-transport-https
fi
echo 'deb     https://get.docker.io/ubuntu docker main' | tee /etc/apt/sources.list.d/docker.list
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
apt-get update
apt-get install -y lxc-docker