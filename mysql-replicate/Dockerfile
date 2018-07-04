FROM tlay/tlay-utilities:1.6.4
LABEL MAINTAINER "Yzi <guoyaozhide@gmail.com>"

ENV MYSQL_ROOT_PASSWORD=""
ENV MYSQL_MASTER_HOSTS=""
ENV MYSQL_SLAVE_HOSTS=""

CMD mysqlreplicate --master=root:${MYSQL_ROOT_PASSWORD}@${MYSQL_MASTER_HOSTS} \
    --slave=root:${MYSQL_ROOT_PASSWORD}@${MYSQL_SLAVE_HOSTS} \
    --rpl-user=root:${MYSQL_ROOT_PASSWORD} -vv \
    --start-from-beginning --pedantic