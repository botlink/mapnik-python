FROM picoded/ubuntu-python:latest
MAINTAINER Botlink

RUN DEBIAN_FRONTEND=noninteractive add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libmapnik-dev
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y mapnik-utils
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y gdal-bin
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y python-pip
