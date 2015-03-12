FROM debian:jessie
MAINTAINER Bill Carlson <bcarlson@vorrohealth.com>

RUN apt-get update && \
    apt-get install -y doxygen graphviz

RUN mkdir /data

WORKDIR /data

ENTRYPOINT ["doxygen"]
