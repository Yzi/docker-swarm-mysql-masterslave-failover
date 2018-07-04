FROM tlay/tlay-utilities:1.6.4
LABEL MAINTAINER "Yzi <guoyaozhide@gmail.com>"

ENV MYSQL_ROOT_PASSWORD=""
ENV MYSQL_MASTER_HOSTS=""

CMD mysqlfailover --force --daemon=nodetach --log=/var/log/mysqlfailover/log.txt --master=root:${MYSQL_ROOT_PASSWORD}@${MYSQL_MASTER_HOSTS} \
    --discover-slaves-login=root:${MYSQL_ROOT_PASSWORD}