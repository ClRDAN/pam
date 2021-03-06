#! /bin/bash
# @edt ASIX M06 2018-2019
# instalacion cliente PAM
# - crear usuarios locales
#----------------------------
#cp /opt/docker/ldap.conf /etc/openldap/ldap.conf
cp /opt/docker/system-auth.edt /etc/pam.d/system-auth.edt
ln -fs /etc/pam.d/system-auth.edt /etc/pam.d/system-auth
./authconfig.conf
groupadd localgrp01
groupadd localgrp02
useradd -g users -G localgrp01 local01
useradd -g users -G localgrp01 local02
useradd -g users -G localgrp01 local03
useradd -g users -G localgrp02 local04
useradd -g users -G localgrp02 local05
useradd -g users -G localgrp02 local06
echo "local01" | passwd --stdin local01
echo "local02" | passwd --stdin local02
echo "local03" | passwd --stdin local03
echo "local04" | passwd --stdin local04
echo "local05" | passwd --stdin local05
echo "local06" | passwd --stdin local06
