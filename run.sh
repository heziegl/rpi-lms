#!/bin/sh

VERSION=7.8.1
DOCKERHUBUSER=heziegl

sudo docker run -d \
		-p 9000:9000 \
		-p 3483:3483 \
		-p 3483:3483/udp \
		--hostname="$HOSTNAME-docker-lms" \
		-v "/etc/localtime":"/etc/localtime":ro \
		-v $(pwd)/vol_lms_persist:/var/lib/squeezeboxserver \
		-v $(pwd)/vol_lms_log:/var/log/squeezeboxserver \
		-v $(pwd)/vol_lms_media:/media \
		--name="lms" \
		$DOCKERHUBUSER/rpi-lms:$VERSION
