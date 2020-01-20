FROM php:latest

RUN apt-get update && \
    apt-get install -y wget

RUN wget https://raw.githubusercontent.com/larowlan/tl/master/tl.phar && \
    mv tl.phar /usr/local/bin/tl && \
    chmod +x /usr/local/bin/tl

RUN useradd -ms /bin/bash nick
USER nick

ENTRYPOINT ["tl"]
