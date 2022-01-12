# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"

  config.vm.synced_folder "C:\\Users\\webal\\Documents\\projects", "/home/vagrant/projects"
  

  config.vm.network :forwarded_port, guest: 3306, host: 3306, host_ip: '127.0.0.1'
  config.vm.network :forwarded_port, guest: 5432, host: 5432, host_ip: '127.0.0.1'
  config.vm.network :forwarded_port, guest: 27017, host: 27017, host_ip: '127.0.0.1'
  config.vm.network :forwarded_port, guest: 5050, host: 5050, host_ip: '127.0.0.1'
  config.vm.network :forwarded_port, guest: 9092, host: 9092, host_ip: '127.0.0.1'
  config.vm.network :forwarded_port, guest: 2181, host: 2181, host_ip: '127.0.0.1'
  
  config.vm.network :forwarded_port, guest: 5672, host: 5672, host_ip: '127.0.0.1'
  config.vm.network :forwarded_port, guest: 15672, host: 15672, host_ip: '127.0.0.1'

  config.vm.network :forwarded_port, host: 48080, guest: 8080, host_ip: '127.0.0.1'
  config.vm.network :forwarded_port, host: 48000, guest: 8000, host_ip: '127.0.0.1'
  config.vm.network :forwarded_port, host: 43000, guest: 3000, host_ip: '127.0.0.1'
  config.vm.network :forwarded_port, host: 43001, guest: 3001, host_ip: '127.0.0.1'
  config.vm.network :forwarded_port, host: 481, guest: 81, host_ip: '127.0.0.1'
  config.vm.network :forwarded_port, host: 48011, guest: 8011, host_ip: '127.0.0.1'
  config.vm.network :forwarded_port, host: 48010, guest: 8010, host_ip: '127.0.0.1'
  config.vm.network :forwarded_port, host: 480, guest: 80, host_ip: '127.0.0.1'

  config.vm.network :forwarded_port, host: 49492, guest: 9492, host_ip: '127.0.0.1'
  config.vm.network :forwarded_port, host: 44566, guest: 4566, host_ip: '127.0.0.1'
  config.vm.network :forwarded_port, host: 44572, guest: 4572, host_ip: '127.0.0.1'
  config.vm.network :forwarded_port, host: 44576, guest: 4576, host_ip: '127.0.0.1'
  config.vm.network :forwarded_port, host: 49492, guest: 9492, host_ip: '127.0.0.1'
  
  # config.vm.share_folder("v-root", "/home/vagrant/apps", "/home/gareth/Projects/project-name/", :nfs => true)
   
  config.vm.provision "shell", path: "vagrant-scripts.sh"

  config.vm.host_name = "alisson"

  config.vm.provider :virtualbox do |vb|
    vb.memory = 2048
    vb.name = 'developer_ubuntu'
    # vb.customize ["modifyvm", :id, "--ioapic", "on"]
    vb.customize ["modifyvm", :id, "--memory", "2048"]
    vb.customize ["modifyvm", :id, "--cpus", 2]
    vb.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
  end

end