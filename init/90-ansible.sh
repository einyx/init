#!/bin/bash
set -e

function ansible_install()
{
  yum install -y git
  rpm -iUvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-9.noarch.rpm
  yum -y update
  yum -y install ansible
  ansible --version
}

#function ansible_run()
#{
#
#}

if [[ -v ROLE ]]
then
  ansible_run $ROLE
else
  NEW_HOSTNAME=${TRUNC_INSTANCE_ID}
fi
