# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "centos/7"
  config.vm.hostname = "foreman.local"

  config.vm.box_check_update = false

  # Forward a Port
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
  config.vm.network "forwarded_port", guest: 80, host: 9080   # HTTP
  config.vm.network "forwarded_port", guest: 443, host: 9443  # HTTPS
  config.vm.network "forwarded_port", guest: 389, host: 389   # LDAP
  config.vm.network "forwarded_port", guest: 636, host: 636   # LDAPS
  config.vm.network "forwarded_port", guest: 88, host: 88   # Kerberos
  config.vm.network "forwarded_port", guest: 464, host: 464   # Kerberos
  config.vm.network "forwarded_port", guest: 123, host: 123   # NTP


  # Private Network:
  config.vm.network "private_network", ip: "10.10.0.1", netmask: "255.255.0.0"

  # Public Network:
  # config.vm.network "public_network"
  config.vm.network "public_network", ip: "192.168.1.10", netmask: "255.255.255.0", bridge: "Intel(R) 82579LM Gigabit Network Connection"

  # config.vm.synced_folder "../data", "/vagrant_data"
  config.vm.synced_folder "./", "/vagrant"

  config.vm.provider "virtualbox" do |vb|  
    # Customize the amount of memory on the VM:
    vb.name = "foreman"
    vb.memory = "4096"
    vb.cpus   = "2"
  end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Ansible, Chef, Docker, Puppet and Salt are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
  config.vm.provision "shell", path: "scripts/base.sh"
end
