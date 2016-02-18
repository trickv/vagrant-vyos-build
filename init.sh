#!/usr/bin/env bash

set -u
set -e

sudo apt-mark hold grub-pc # to prevent config prompts on EC2 VMs

apt-get update

apt-get -q -y dist-upgrade

apt-get -q -y install build-essential python-pystache live-build pbuilder devscripts

apt-get -q -y install git vim

if [ -d ~vagrant ]; then
    vagrant_user=vagrant
elif [ -d ~admin ]; then
    vagrant_user=admin
fi

if [ "$vagrant_user" != "" -a ! -d ~$vagrant_user/vyos-build ]; then
    su -c "git clone https://github.com/vyos/vyos-build" $vagrant_user
fi

echo "To build your VyOS iso:
  cd vyos-build
  ./configure
  sudo make iso
  " > .message
echo "cat .message" > .bash_profile
touch .hushlogin
