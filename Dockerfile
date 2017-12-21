FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y wget nano mariadb-client \
	&& apt-get clean

RUN set -x \
	&& ARCHIVE=sphinx-3.0.1-7fec4f6-linux-amd64 \
	&& wget http://sphinxsearch.com/files/$ARCHIVE.tar.gz \
	&& tar xzvf $ARCHIVE.tar.gz \
	&& mkdir -p /sphinx/bin \
	&& mkdir -p /sphinx/etc \
	&& mkdir -p /sphinx/share/dict \
	&& mkdir -p /sphinx/var/run \
	&& mkdir -p /sphinx/var/log \
	&& cp $ARCHIVE/bin/* /sphinx/bin \
	&& rm -rf ./$ARCHIVE*

ENV PATH=$PATH:/sphinx/bin
