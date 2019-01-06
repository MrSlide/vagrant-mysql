# vagrant-mysql

An Ubuntu Cosmic 64-bit Vagrant box with MySQL 5.7.24 for local development and testing.

## Requirements

* [Vagrant 2](https://www.vagrantup.com/)
* [VirtualBox 6](https://www.virtualbox.org)

## Start up

Run `vagrant up` from the directory of the project. The first boot will take a while due to all the packages that need to be downloaded, but any subsequent `vagrant up`'s should only take a few seconds.

## Connecting to the database

The MySQL server is configured to accept connections from the host machine (the one where you're running the Vagrant box from). Use the following details to connect using any MySQL compatible client:

| Host           | Port | Username | Password |
| -------------- | ---- | -------- | -------- |
| 192.168.50.101 | 3306 | root     | root     |

Only the default MySQL databases are included. You will need to create your own database before you can start adding tables and data.

## Warning

This database configuration is unsafe and meant for local development and testing only. Do not use this database configuration in a production environment or in environments where it can receive connections from the outside world.
