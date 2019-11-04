ARG PHP_VERSION

FROM letsdockerize/laradock-workspace:2.4-${PHP_VERSION}

# composer関連の設定
ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /composer

RUN composer config -g repos.packagist composer https://packagist.jp
RUN composer global require hirak/prestissimo

# nvm & node
ENV NVM_DIR /home/.nvm
ARG NODE_VERSION

RUN mkdir -p $NVM_DIR && \
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash \
        && . $NVM_DIR/nvm.sh \
        && nvm install ${NODE_VERSION} \
        && curl -o- -L https://yarnpkg.com/install.sh | bash
ENV PATH $HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH

# hot reload
ENV CHOKIDAR_USEPOLLING=true

COPY ide_helper.sh /var/file/
COPY watch.js /var/file/