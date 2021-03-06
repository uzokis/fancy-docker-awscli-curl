FROM alpine:latest

RUN \
	mkdir -p /aws && \
	apk -Uuv add bash groff less python py-pip curl && \
	pip install awscli && \
	apk --purge -v del py-pip && \
	rm /var/cache/apk/*

WORKDIR /aws


