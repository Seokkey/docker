FROM ubuntu:20.04
LABEL maintainer="educafe <edu4cafe@gmail.com>"
LABEL description="Dockerfile for testing USER & WORKDIR"

RUN apt-get update && apt-get install -y gcc
WORKDIR /tmp
COPY a.c .
RUN gcc a.c
#CMD ./a.out
CMD ["./a.out", "3"]

