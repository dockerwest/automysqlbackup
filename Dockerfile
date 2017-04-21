FROM alpine

RUN apk add --no-cache bash mysql-client
COPY ./root /

VOLUME /backup
WORKDIR /backup

ENTRYPOINT ["/entrypoint.sh"]
CMD ["automysqlbackup"]
