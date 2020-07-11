Vagrant.configure("2") do |config|

  config.vbguest.auto_update = false

  config.vm.define "dkr-box" do |dkrbox|
    dkrbox.vm.box = "bento/centos-7"
    dkrbox.vm.provider "virtualbox" do |v|
      v.memory = 8192
      v.cpus = 4
    end
    dkrbox.vm.hostname = "docker-box"
    dkrbox.vm.network :forwarded_port, guest: 22, host: 2700, id: "ssh"
    dkrbox.vm.network "private_network", ip: "192.168.51.3"
    dkrbox.vm.provision "shell", path: "./scripts/centos-common.sh"
    dkrbox.vm.provision "shell", path: "./scripts/install-docker-dev.sh"
    dkrbox.vm.provision "shell", path: "./scripts/setup-workdir.sh"

  end

end
