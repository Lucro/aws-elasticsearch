FROM elasticsearch:2.4
MAINTAINER Alex Robson <asrobson@gmail.com>

RUN plugin install cloud-aws
COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]