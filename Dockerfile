FROM ubuntu:16.04

MAINTAINER michimau <mauro.michielon@eea.europa.eu>

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections && \
         apt-get update && \
         apt install cron \
                     vim \
                     jq \
                     default-jdk -y && \
         apt-get clean

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]

CMD [ "/usr/sbin/cron","-f","-L /dev/stdout" ]
