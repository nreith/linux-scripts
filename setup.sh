#!/bin/bash

printf '
# INSTALLING devops-scripts in /usr/local/bin
#############################################
'

export DEBIAN_FRONTEND=noninteractive
apt-get -y -qq update
apt-get -y -qq install sudo \
	dialog \
	apt-utils \
	apt-transport-https  \
	wget  \
	curl  \
	git-lfs

cd /tmp
git clone https://github.com/nreith/linux-scripts.git
sudo cp /tmp/linux-scripts/scripts/* /usr/local/bin/
sudo chmod +x /usr/local/bin/*

printf '
# DONE
######

Usage:

- List available scripts

	`scripts_index`

- Install something

	`sudo install_somepkg`

- Run os script

	`sudo os_clean`

- Set proxy

	`sudo os_set proxy -H someproxy.url.com -P 8080`

- Unset proxy

	`sudo unset proxy`

- Uninstall scripts

	`cd /usr/local/bin/`
	`sudo rm script1 script2 etc`
'