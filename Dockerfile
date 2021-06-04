FROM alpine:3.11
RUN apk add --no-cache php7-fpm su-exec
ENTRYPOINT ["su-exec", "nobody", "/usr/sbin/php-fpm7", "--nodaemonize", "--force-stderr"]
