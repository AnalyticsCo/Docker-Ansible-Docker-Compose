
-
| Machine  Name | Role          | Network Configuration                  | OS                         |
|---------------|---------------|----------------------------------------|----------------------------|
| control       | Ansible  host | private_network, ip: 192.168.135.10    | Ubuntu Focal64 (20 LTS)   |
| app01         | web server 1  | private_network, ip: 192.168.135.111   | Ubuntu Focal64 (20 LTS)   |



## Prerequisites
* Install the Vagrant 2.2.15 from https://www.vagrantup.com/downloads
* Install the Virtualbox 6.1.18 from https://www.virtualbox.org/wiki/Downloads if it is not installed already.
* Download the Vagrant boxes for your preferred hypervisor:
  ```
  $ vagrant box add ubuntu/focal64
  ```

## Quick Start
* Clone this repo
* Ensure you have installed Vagrant and Virtualbox(check `Prerequisites` section)
* Run `vagrant up` from the root of the cloned repo (the folder with Vagrantfile in it)
* Once the VMs are built, type `vagrant ssh control` to login to the ansible controller from within your vagrant project folder.
* Change directories `cd /vagrant/ansible` which is the ansible subfolder of your vagrant project for this lab (the vagrant project folder is mounted within the VMs as /vagrant during provisioning)


$ ansible-playbook --check -i /vagrant/ansible/hosts /vagrant/ansible/playbooks/site.yml
```
