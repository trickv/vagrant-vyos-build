Vagrant.configure(2) do |config|
  config.vm.box = "debian/jessie64"
  config.vm.synced_folder ".", "/vagrant_data"
  config.vm.provision "shell", file: init.sh
end

# -*- mode: ruby -*-
# vi: set ft=ruby :
