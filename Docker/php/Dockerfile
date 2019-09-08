ARG PHP_VERSION
ARG TZ

FROM ${PHP_VERSION}

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /composer

RUN set -eux \
  && apk add --update-cache --no-cache --virtual=.build-dependencies tzdata \
#  cp /usr/share/zoneinfo/${TZ} /etc/localtime && \
  && apk del .build-dependencies \
  && docker-php-ext-install bcmath pdo_mysql \
  && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer \
  && composer config -g repos.packagist composer https://packagist.jp \
  && composer global require hirak/prestissimo \
  && apk add --no-cache bash \
  && echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen \
  && locale-gen ja_JP.UTF-8

ENV LANG ja_JP.UTF-8