#!/bin/bash
set -ex

yum update -y
yum install -y python27-pip gcc zlib-devel openssl-devel

pip install --upgrade pip
pip2.7 install lxml -t /outputs/py27

cd /usr/src
curl -O https://www.python.org/ftp/python/3.6.1/Python-3.6.1.tgz
tar xzf Python-3.6.1.tgz
cd Python-3.6.1
./configure
make altinstall
pip3.6 install lxml -t /outputs/py36
