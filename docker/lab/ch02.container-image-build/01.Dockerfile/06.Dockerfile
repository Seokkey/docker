FROM ubuntu:20.04
LABEL maintainer="educafe <edu4cafe@gmail.com>"
LABEL description="Dockerfile for testing USER & WORKDIR"

RUN echo 'root:docker' | chpasswd
RUN apt-get update
RUN apt-get install sudo && apt-get clean

RUN useradd -m educafe && echo 'educafe:ubuntu' | chpasswd
USER educafe
RUN mkdir /home/educafe/lab
WORKDIR /home/educafe/lab

RUN touch file01
CMD /bin/bash