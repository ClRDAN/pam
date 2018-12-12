#version: 0.0.1
#@edt M06 2018-2019
#host PAM
#----------------------
FROM fedora:27
LABEL author="@edt ASIX M06 Curs 2018-2019"
LABEL description="cliente PAM edt.org cn dataDB practica"
RUN dnf -y install procps vim procps less tree nmap mlocate man telnet iproute openldap-clients nss-pam-ldapd passwd authconfig
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/install.sh /opt/docker/startup.sh
CMD ["/opt/docker/startup.sh"]
WORKDIR /opt/docker

