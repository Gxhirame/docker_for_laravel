ARG NGINX_VERSION

FROM ${NGINX_VERSION}

RUN set -eux \
  && apk update \
  && apk upgrade \
  && apk --update add logrotate \
  && apk add --no-cache openssl \
  && apk add --no-cache bash \
  && echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen \
  && locale-gen ja_JP.UTF-8

ENV LANG ja_JP.UTF-8