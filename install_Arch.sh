#!/bin/bash

yes | sudo pacman -S aircrack-ng dhcp lighttpd macchanger nmap xterm php-cgi python2


echo "installing mdk3..... "


git clone https://github.com/Info-security/mdk3.git


cd /mdk3-master

make && sudo make install

cd ..

echo "installing pyrit..... "

wget -c https://github.com/JPaulMora/Pyrit/archive/v0.5.0.tar.gz
tar -xf v0.5.0.tar.gz
cd Pyrit-0.5.0
sed -i "s/COMPILE_AESNI/NO_COMPILE_AESNI/" cpyrit/_cpyrit_cpu.c
python2 setup.py build
sudo python2 setup.py install
