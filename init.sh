#!/usr/bin/env bash

apt-get update
apt-get -y dist-upgrade

apt-get -y install build-essential python-pystache live-build

apt-get -y install git vim


if [ ! -d ~vagrant/vyos-build ]; then
    su -c "git clone https://github.com/vyos/vyos-build" vagrant
fi
