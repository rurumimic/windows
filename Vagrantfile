# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "rockylinux/8"

  config.vm.network "forwarded_port", guest: 80, host: 8080 # => host $ curl 127.0.0.1:8080
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # host-only access to the machine using a specific IP.
  config.vm.network "private_network", ip: "192.168.56.101" # => host $ curl 192.168.56.101:80

  # Public network = Bridged networks
  # config.vm.network "public_network"

  # host, guest
  config.vm.synced_folder "./share", "/share"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
    vb.cpus = 1
  end

  config.vm.provision "shell", inline: <<-SHELL
    dnf install -y nginx
    systemctl start nginx
    systemctl enable nginx
  SHELL
end
