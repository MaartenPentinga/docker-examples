FROM ubuntu:18.04
LABEL Maintainer="Maarten Pentinga"
LABEL Description="Example dockerfile" Vendor="Pruts" Version="0.1"
EXPOSE 80/tcp
EXPOSE 22/tcp

# Base setup
RUN apt-get update && apt-get upgrade -y

# Locales setup
RUN apt-get install locales locales-all -y && locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN apt-get update && \
	export DEBIAN_FRONTEND=noninteractive && \
	apt-get install apache2 openssh-server libapache2-mod-php unzip -y 

### Add the website
ADD --chown=www-data:www-data sources/html/index.php /var/www/html/index.php
RUN chown -R www-data:www-data /var/www/html
RUN rm -rf /var/www/html/index.html
RUN chmod -R 774 /var/www/html/*

# Clean up
RUN apt-get autoclean -y && \
    apt-get autoremove -y && \
    rm -rf /tmp/*

WORKDIR /root
ADD --chown=root:root entrypoint.sh /opt/run/entrypoint.sh
RUN chmod 700 /opt/run/entrypoint.sh
ENTRYPOINT /opt/run/entrypoint.sh

