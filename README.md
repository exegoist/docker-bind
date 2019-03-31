# docker container for bind in fedora

Configuration files located in folder 'conf'

Zone files should be placed in folders 'P' and 'R' (R - for reverse)

        groupadd -g 25 named

        useradd -d /var/named -u 25 -s /bin/false -g named named
