#!/bin/bash
set -e

yum install git
rpm -iUvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
yum -y update
yum -y install ansible
ansible --version
