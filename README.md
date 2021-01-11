# devops-scripts

Collection of Linux install and config scripts for use in configuring desktops,  servers, or docker images for datascience/devops development

*Currently known to work with Ubuntu 20.04*

**PSA: Please contribute!**

This repo is public and open to forks or pull requests from anyone with a github.com account.

## Installation

The following convenience script will install required dependencies, place the
scripts in /usr/local/bin and chmod +x them for later use to install/config things.

`curl -sL https://raw.githubusercontent.com/nreith/linux-scripts/setup.sh | sudo bash`

NOTE: Skip sudo if you're in a fresh docker build/image that doesn't have it.
It'll be installed, and docker builds run as root so you don't need it at first.

## Usage

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