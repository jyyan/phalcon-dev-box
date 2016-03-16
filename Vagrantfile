Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.network :private_network, ip: "192.168.10.101"
  config.ssh.forward_agent = true
  config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.provider :virtualbox do |v|
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--memory", 1024]
    v.customize ["modifyvm", :id, "--name", "phalcondev-box"]
  end

  config.vm.synced_folder "../", "/workspace"

  config.vm.provision :shell, :path => "scripts/install-maria.sh"
  config.vm.provision :shell, :path => "scripts/install-base-env.sh"
  config.vm.provision :shell, :path => "scripts/install-phalcon.sh"
  config.vm.provision :shell, :path => "scripts/install-zephir.sh"

end
