ARG POSTGRES_VERSION

FROM ${POSTGRES_VERSION}

RUN apk update \
    && apk upgrade \
    && apk --update add logrotate \
    && apk add --no-cache openssl \
    && apk add --no-cache bash \

#ENV LANG ja_JP.UTF-8