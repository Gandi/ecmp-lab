FROM debian:stretch-slim
MAINTAINER Gandi
ENV DEBIAN_FRONTEND noninteractive

# Add Tini
ENV TINI_VERSION v0.13.2
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini

# Do a Gandi VM
ADD layer0 .
RUN chmod 644 /etc/apt/sources.list /etc/apt/apt.conf.d/42gandi
RUN apt-get update && apt-get upgrade -y

RUN apt-get -y update && apt-get install -y bird \
    gdb \
    procps \
    strace \
    libcap-ng-utils
VOLUME ["/var/log", "/var/run", "/etc/bird.d"]

COPY ./init.sh /

ENTRYPOINT ["/tini", "--"]
CMD ["/init.sh"]
