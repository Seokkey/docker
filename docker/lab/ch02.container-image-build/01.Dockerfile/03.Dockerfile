FROM ubuntu:18.04
LABEL maintainer="educafe <edu4cafe@gmail.com>"
LABEL description="Dockerfile for testing ENTRYPOINT"

ENTRYPOINT ["echo"]
CMD ["Hello World"]

