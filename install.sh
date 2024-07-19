#!/bin/bash

curl -sSL https://raw.githubusercontent.com/gitsang/lxc-iptag/main/lxc-iptag -o /usr/local/bin/lxc-iptag
curl -sSL https://raw.githubusercontent.com/gitsang/lxc-iptag/main/lxc-iptag.service -o /lib/systemd/system/lxc-iptag.service

sudo systemctl daemon-reload
sudo systemctl enable lxc-iptag.service
sudo systemctl start lxc-iptag.service