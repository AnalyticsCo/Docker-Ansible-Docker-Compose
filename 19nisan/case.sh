#!/bin/bash

sudo yum install update 
sudo yum -y update

adduser kerim_yilmaz
passwd kerim_yilmaz
usermod -aG wheel kerim_yilmaz



cd ~/
cd ..
cd opt
mkdir bootcamp
cd bootcamp
touch bootcamp.txt
vi bootcamp.txt

cd ~/

sudo mv $(sudo find / -iname "bootcamp.txt" -print) /mnt/bootcamp
