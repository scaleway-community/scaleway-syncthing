## -*- docker-image-name: "armbuild/scw-app-syncthing:latest" -*-
FROM armbuild/scw-distrib-alpine:3.2.0
MAINTAINER Scaleway <opensource@scaleway.com> (@scaleway)

# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter

ENV VERSION v0.11.8

RUN wget -q --no-check-certificate "https://github.com/syncthing/syncthing/releases/download/${VERSION}/syncthing-linux-arm-${VERSION}.tar.gz" -O syncthing.tar.gz && \
    tar -xzf syncthing.tar.gz && \
    rm -f syncthing.tar.gz && \
    mv syncthing*/syncthing /usr/local/bin/. && \
    rm -rf syncthing*/

ADD ./patches/etc/ /etc/

RUN rc-update add syncthing default

# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave

EXPOSE 8384
