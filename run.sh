#!/bin/sh

VERSION=7.8.1

sudo docker run -d \
           	-p 9000:9000 \
           	-p 3483:3483 \
           	-p 3483:3483/udp \
		--hostname="docker-lms" \
           	-v $(pwd)/vol_lms_persist:/var/lib/squeezeboxserver \
                -v $(pwd)/vol_lms_log:/var/log/squeezeboxserver \
           	-v $(pwd)/vol_lms_media:/media \
		--name="lms" \
           	heziegl/rpi-lms:$VERSION


