FROM alpine
MAINTAINER Lyndon li <snakeliwei@gmail.com>
RUN echo "@edge http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
    && apk add --update mutt msmtp && rm -rf /var/cache/apk/* 
    
ENV mailtitle
ENV mailcontent
ENV sendmailaddr

# Configure container to run as an executable
CMD ["echo $mailcontent | mutt $mailtitle $sendmailaddr"]
