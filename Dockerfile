FROM centos:7
MAINTAINER Arturo Volpe <arturovolpe@gmail.com>

ENV PYTHON_VERSION 3.6.2

RUN yum update -y &&\
    yum install yum-utils curl -y &&\
    yum-builddep python -y &&\
    curl -O https://www.python.org/ftp/python/$PYTHON_VERSION/Python-$PYTHON_VERSION.tgz && \
    tar xf Python-$PYTHON_VERSION.tgz && \
    python Python-$PYTHON_VERSION && \
    ./configure && \
    make && \
    make install &&\
    yum clean all

RUN python3 --version
