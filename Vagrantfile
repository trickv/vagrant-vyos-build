Vagrant.configure(2) do |config|
  config.vm.box = "debian/jessie64"
  config.vm.provision "shell", path: "init.sh"
  config.vm.provider :aws do |aws, override|
    aws.ami = "ami-0ed89d79" # Debian 8
    aws.region = "eu-west-1" # to match ami id
    override.ssh.username = "admin"
  end
end

# -*- mode: ruby -*-
# vi: set ft=ruby :
