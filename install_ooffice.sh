#!/bin/bash

wget https://sourceforge.net/projects/openofficeorg.mirror/files/4.1.12/binaries/en-US/Apache_OpenOffice_4.1.12_Linux_x86-64_install-deb_en-US.tar.gz
tar -zxvf Apache_OpenOffice_4.1.12_Linux_x86-64_install-deb_en-US.tar.gz
sudo rm -rf Apache_OpenOffice_4.1.12_Linux_x86-64_install-deb_en-US.tar.gz
cd en-US/DEBS/
sudo dpkg -i *.deb
cd desktop-integration
sudo dpkg -i *.deb
cd ../../..
sudo rm -rf en-US
