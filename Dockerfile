FROM resin/rpi-raspbian:wheezy
MAINTAINER Heiko Ziegler <git@z5r.de>


RUN     apt-get update && \
        apt-get -y install perl adduser iproute curl wget faad flac lame sox


ENV    SQUEEZE_VOL_PERSIST /var/lib/squeezeboxserver
ENV    SQUEEZE_VOL_LOG /var/log/squeezeboxserver

ENV 	LANG C.UTF-8
#ENV 	LMS_URL http://downloads.slimdevices.com/nightly/7.9/sc/3a5fe78/logitechmediaserver_7.9.0~1456927571_all.deb
ENV	LMS_URL http://downloads.slimdevices.com/nightly/7.8/sc/3c71ddd/logitechmediaserver_7.8.1~1458035672_all.deb

RUN	curl -Lf -o /tmp/lms.deb $LMS_URL && \
	dpkg -i /tmp/lms.deb && \
	rm -f /tmp/lms.deb && \
	apt-get clean

VOLUME 	$SQUEEZE_VOL_PERSIST $SQUEEZE_VOL_LOG
EXPOSE 	3483 3483/udp 9000 9090

COPY entrypoint.sh.txt /entrypoint.sh
RUN chmod 755 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

