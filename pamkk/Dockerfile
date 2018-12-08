#version 0.0.3
# host PAM
#---------------
FROM fedora:27
LABEL author="@edt ASIX M06 2018-19"
LABEL description="Cliente PAM edt.org con conexion a LDAP"
RUN dnf -y install procps vim less tree nmap iproute openldap-clients passwd authconfig pam_mount nss-pam-ldapd
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/install.sh /opt/docker/startup.sh /opt/docker/authconfig.conf
CMD ["/opt/docker/startup.sh"]
WORKDIR /opt/docker
