# Dockerfile for statsd

FROM tarampampam/node:10.10-alpine

RUN git clone git://github.com/etsy/statsd.git /usr/local/src/statsd

ADD ./etc/config.js ./etc/default/statsd.js

ADD ./etc/start_statsd.sh ./etc/default/start_statsd.sh

ENV GRAPHITE_GLOBAL_PREFIX stats
ENV GRAPHITE_LEGACY_NAMESPACE true

ENV STATSD_PORT 8125
ENV STATSD_DUMP_MSG false
ENV STATSD_DEBUG false
ENV STATSD_FLUSH_INTERVAL 10000

EXPOSE 8125/udp
EXPOSE 8126/tcp

CMD /etc/default/start_statsd.sh
