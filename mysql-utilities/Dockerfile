FROM debian:stretch
LABEL MAINTAINER "Yzi <guoyaozhide@gmail.com>"

ENV TZ="Asia/Shanghai"

RUN apt-get update && \
    apt-get install -y mysql-utilities && \
    rm -rf /var/lib/apt/lists/*