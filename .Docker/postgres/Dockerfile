ARG POSTGRES_VERSION

FROM ${POSTGRES_VERSION}

# -e:エラーが出たらそこで中断, -u:未定義の変数でエラーを出す, -x:実行したコマンドを全て標準エラー出力に出す
RUN set -eux \
  && apt-get update \
  && apt-get install -y locales \
  && rm -rf /var/lib/apt/lists/* \
  && echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen \
  && locale-gen ja_JP.UTF-8

ENV LANG ja_JP.UTF-8