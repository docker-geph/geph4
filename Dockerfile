FROM ghcr.io/linuxserver/baseimage-alpine:3.12

# set version label
ARG BUILD_DATE
ARG VERSION
ARG GEPH4_VERSION
LABEL build_version="geph4 version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="docker-geph"

RUN \
 echo "**** install geph4 ****" && \
 mkdir -p \
	/tmp/geph4 && \
 curl -o \
 /tmp/geph4-client -L \
	"https://github.com/docker-geph/geph4/releases/download/${GEPH4_VERSION}/geph4-client-x86_64" && \
 install -Dm755 /tmp/geph4-client /usr/bin/ && \
 echo "**** cleanup ****" && \
 rm -rf \
	/tmp/*

# copy local files
COPY root/ /

# ports and volumes
VOLUME /config
