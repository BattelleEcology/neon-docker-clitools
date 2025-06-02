FROM alpine:3.22.0

RUN apk add --update --upgrade --no-cache \
    openssh-client \
    tmux \
    zsh \
    bash \
    netcat-openbsd \
    inetutils-ftp \
    inetutils-telnet && \
  addgroup -g 1001 cliuser &&\
  adduser cliuser -u 1001 -h /home/cliuser -G cliuser -S -s /bin/zsh &&\
  rm -rf /var/cache/apk/*
WORKDIR /home/cliuser 
USER cliuser:cliuser
ENTRYPOINT ["sleep", "infinity"]
