FROM ubuntu:18.04
LABEL version="0.9" \
      description="WebDAV docker image using Ubuntu:18.04"

RUN apt-get update && \
    apt-get install -y apache2 && \
    # Setup webdav directory
    mkdir /var/www/webdav && \
    chown -R www-data:www-data /var/www/ && \
    # Enable webdav modules
    a2enmod dav && \
    a2enmod dav_fs && \
    # Enable headers
    a2enmod headers && \
    service apache2 restart

WORKDIR /

ADD root /

RUN /scripts/configure.sh && \
    service apache2 restart

#    80: http
#   443: https
EXPOSE 80 443

ENTRYPOINT [ "apache2ctl", "-D", "FOREGROUND" ]
