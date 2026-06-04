#!/bin/bash

# X-UI සහ Xray Binary එක Download කර Run කිරීම
cd /tmp
wget https://github.com/vaxilu/x-ui/releases/latest/download/x-ui-linux-amd64.tar.gz
tar zxvf x-ui-linux-amd64.tar.gz
cd x-ui
chmod +x x-ui bin/xray-linux-amd64

# Hugging Face Port එකට Configure කිරීම
./x-ui setting -username admin -password admin -port 7860

# Panel එක සක්‍රීය කිරීම
./x-ui start
sleep infinity
