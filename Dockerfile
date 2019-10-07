FROM centos:7

MAINTAINER michimau <mauro.michielon@eea.europa.eu>

RUN yum -y update
RUN yum -y install crontabs \
                   java \
                   dcron

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]

CMD ["crond", "-n"]
