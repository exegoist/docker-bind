FROM fedora:latest

RUN dnf -y install bind bind-utils wget

RUN wget -q -O /etc/bind.keys https://ftp.isc.org/isc/bind9/keys/9.11/bind.keys.v9_11 ; \
    rndc-confgen -a -r /dev/urandom -c /etc/rndc.key ; \
    chown root:named /etc/rndc.key && chmod 640 /etc/rndc.key ; \
    mkdir -m 770 /var/bind 
