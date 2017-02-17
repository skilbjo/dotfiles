FROM gliderlabs/alpine:latest

ENV CONSUL_PREFIX __CONSUL_PREFIX__
ENV CONSUL_SECRET_PREFIX __CONSUL_SECRET_PREFIX__

RUN apk update && \
    apk add postgresql-client && \
    apk add postfix mutt && \
    apk add tzdata && \
    apk add bash curl vim && \
    apk add coreutils bc && \
    /bin/sh && ln -sf /bin/bash /bin/sh && \
    /bin/ash && ln -sf /bin/bash /bin/ash && \
    rm -rf /var/cache/apk/*

RUN echo "set realname=\"data-us\"" >> /root/.muttrc && \
    echo "set edit_headers=yes"     >> /root/.muttrc && \
    echo "set from=\"Data US <data-us@fundingcircle.com>\"" >> /root/.muttrc && \
    echo "myorigin = fundingcircle.com" >> /etc/postfix/main.cf && \
    echo "smtp_generic_maps = hash:/etc/postfix/generic" >> /etc/postfix/main.cf && \
    echo "smtputf8_enable = no" >> /etc/postfix/main.cf && \
    echo "data-us@fundingcircle.com data-us@fundingcircle.com" >> /etc/postfix/generic && \
    chown -R postfix /var/spool/postfix/ && \
    chown root /var/spool/postfix/ && \
    chown root /var/spool/postfix/pid

RUN cp /usr/share/zoneinfo/America/Los_Angeles /etc/localtime && \
    echo "America/Los_Angeles" > /etc/timezone

COPY ./deploy                         /usr/local/deploy
COPY ./deploy/default/bashrc          /root/.bashrc
COPY ./deploy/default/vimrc           /root/.vimrc

COPY ./resources/                     /resources
COPY ./src                            /src
