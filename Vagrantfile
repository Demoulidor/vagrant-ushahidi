# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.hostname = "ushahidi.dev"
  config.vm.box = "puppetlabs/ubuntu-14.04-64-puppet"
  config.vm.network "private_network", ip: "192.168.250.35"
  config.hostsupdater.aliases = [ "ushahidi-platform.dev", "ushahidi-client.dev", "one.dev" ]
  config.vm.provision "shell", path: "install.sh"
  config.vm.provider "virtualbox" do |virtualbox|
    virtualbox.customize [ "modifyvm", :id, "--cpus", "1" ]
    virtualbox.customize [ "modifyvm", :id, "--memory", "512" ]
  end
end
