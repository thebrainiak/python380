#!/bin/bash 
echo -e "Eliminando Version actual de Python e Instalando y Compilando Python 3.8.0"
sudo apt purge --remove python3
sudo apt autoremove
sudo apt update -y && sudo apt upgrade -y
		sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev      libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev curl libbz2-dev -y
wget https://www.python.org/ftp/python/3.8.0/Python-3.8.0.tgz
tar -xvf Python-3.8.0.tgz
cd Python-3.8.0
sudo ./configure –enable-optimizations
make -j
make altinstall
python3.8 --version
sudo update-alternatives --install /usr/bin/python python /usr/local/bin/python3.8 1

echo "Instalación completada."
