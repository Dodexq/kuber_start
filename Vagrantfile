Vagrant.configure("2") do |config|
  
  config.hostmanager.enabled = true 
  config.hostmanager.manage_host = true
  config.vm.boot_timeout = 900

  config.vm.define "kube-start" do |server|
    server.vm.box = "geerlingguy/ubuntu2004"
    server.vm.hostname = "kube"
    server.vm.network :private_network, ip: "192.168.56.170"
    server.vm.network "forwarded_port", guest: 1234, host: 1234
    #server.vm.network "forwarded_port", guest: 80, host: 8080
    #server.vm.network "forwarded_port", guest: 443, host: 8043
    server.vm.provider "virtualbox" do |vb|
      vb.memory = "4096"
      vb.name = "kube-start"
      vb.cpus = "8"
	end
  #server.vm.provision "shell", path: "data/*.sh"
	end
end