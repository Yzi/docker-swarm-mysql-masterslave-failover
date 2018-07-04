FROM debian:stretch
LABEL MAINTAINER "Yzi <guoyaozhide@gmail.com>"

ENV TZ="Asia/Shanghai"
ENV DESTINATIONS=""

COPY ./mysql-apt-config_0.8.10-1_all.deb /mysql-apt-config_0.8.10-1_all.deb
RUN apt-get update && apt-get install -y lsb-release wget tzdata gnupg
RUN dpkg -i mysql-apt-config_0.8.10-1_all.deb

RUN apt-get update && apt-get install -y mysql-router && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 6446

COPY ./docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

CMD ["mysqlrouter", "--config=/tmp/mysqlrouter.conf"]
