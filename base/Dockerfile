FROM ubuntu:19.10

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y bash git make wget curl gcc

RUN useradd -ms /bin/bash nick