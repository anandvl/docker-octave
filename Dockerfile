#
# A dockerfile to run Octave and access it by appropriately connecting to it.
#
# BUILD DOCKER:	docker build -t anandvl/octave .
# RUN the container: docker run --name=octave -t -d --net=host -e DISPLAY -v "$HOME/.Xauthority:/root/.Xauthority:rw" -v $PWD:/root anandvl/octave /bin/bash -c "cd /root; /usr/bin/octave"
#

FROM phusion/baseimage
MAINTAINER Anand Lakshmikumaran <anandvlak@gmail.com>

# Set correct environment variables
ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

# Add the octave repo and install octave
RUN add-apt-repository ppa:octave/stable && \
apt-get update && \
apt-get -y install octave && \
apt-get autoclean
