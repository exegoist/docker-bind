#docker-bind

groupadd -g 25 named
useradd -d /var/named -u 25 -s /bin/false -g named named
