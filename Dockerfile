FROM ubuntu:latest
VOLUME /golem/work /golem/output /golem/resource
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get -qq -y install git build-essential libssl-dev zlib1g-dev
RUN apt-get -qq -y install yasm pkg-config libgmp-dev libpcap-dev libbz2-dev
WORKDIR /usr/src
RUN git clone https://github.com/openwall/john -b bleeding-jumbo
WORKDIR /usr/src/john/src
RUN ./configure && make -s clean && make -sj4
COPY crack.sh /golem/entrypoints/crack.sh
WORKDIR /golem/work
