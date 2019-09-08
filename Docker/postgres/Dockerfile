ARG POSTGRES_VERSION

FROM ${POSTGRES_VERSION}

# -e:エラーが出たらそこで中断, -u:未定義の変数でエラーを出す, -x:実行したコマンドを全て標準エラー出力に出す
RUN set -eux \
  && apk update \
  && apk upgrade \
  && apk --update add logrotate \
  && apk add --no-cache openssl \
  && apk add --no-cache bash \
  && echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen \
  && locale-gen ja_JP.UTF-8

ENV LANG ja_JP.UTF-8