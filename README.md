# Docker StatsD

## About the container
A simple statsd docker implementation based off @antonlindstrom's statsd container with a few insets from @axisk.

## Exposed ports

The following ports are exposed by the image.

- 8125 (UDP) The default port statsd listens on
- 8126 (TCP) [statsd admin interface](https://github.com/etsy/statsd/blob/master/docs/admin_interface.md)


Statsd listens on 8125 by default, to use it outside you'll need to expose it
to the outside world.

## Environment

The following enviromental varaible are supported by this image.

- **GRAPHITE_PORT** (default: 2003)
- **GRAPHITE_HOST**  (default: localhost)
- **GRAPHITE_GLOBAL_PREFIX**      (default: stats)
- **GRAPHITE_LEGACY_NAMESPACE**   (default: true)
- **STATSD_PORT**                 (default: 8125)
- **STATSD_DUMP_MSG**             (default: false)
- **STATSD_DEBUG**                (default: false)
- **STATSD_FLUSH_INTERVAL**       (default: 10000)

## Running the container

Example to run the docker instance:

```
sudo docker run -e GRAPHITE_HOST=127.0.0.1 -e STATSD_DUMP_MSG=true -p 8125:8125/udp -p 8126:8126/tcp -d boomtrain/statsd
```

## Building the container

*This repository is setup to automatically build on Docker Hub when new commits are pushed to the master branch.*

If you wish to build this repository manually, the following command(s) can be used:

```sudo docker build -t statsd . ```
