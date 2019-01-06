Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/cosmic64"
  config.vm.synced_folder "./shared/", "/shared"
  config.vm.network "forwarded_port", guest: 3306, host: 3306
  config.vm.network "private_network", ip: "192.168.50.101"
  config.vm.provision :shell, :path => "scripts/provision.sh"
end
