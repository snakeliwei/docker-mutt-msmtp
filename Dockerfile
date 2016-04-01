FROM alpine
MAINTAINER Lyndon li <snakeliwei@gmail.com>
RUN echo "@edge http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
    && apk add --update mutt msmtp && rm -rf /var/cache/apk/* 
    
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
# Configure container to run as an executable
CMD ["./docker-entrypoint.sh"]
