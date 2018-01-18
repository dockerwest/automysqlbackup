FROM blackikeeagle/alpine:3.5

RUN apk add --update --no-cache bash mysql-client
COPY ./root /

VOLUME /backup
WORKDIR /backup

ENTRYPOINT ["/command.sh"]
CMD ["automysqlbackup"]
