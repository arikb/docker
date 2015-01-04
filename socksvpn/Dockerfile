# start from the OS
FROM arikb/base-os:latest
MAINTAINER Arik Baratz <docker@arik.baratz.org>

# install openVPN
RUN apt-get -q update && apt-get install -y \
	dante-server \
	openvpn \
#	software-properties-common \
	unzip

RUN mkdir /etc/service/danted ; mkdir /etc/service/openvpn

# dante config and run script
COPY danted-run /etc/service/danted/run
COPY danted.conf /etc/danted.conf

# openvpn run script
COPY openvpn-run /etc/service/openvpn/run
COPY config-add config-modify /opt/

# change permissions on run scripts
RUN chmod 755 /etc/service/danted/run /etc/service/openvpn/run

EXPOSE 1080
