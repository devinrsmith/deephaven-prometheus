# deephaven-prometheus

Example extending [deephaven/deephaven-core](https://github.com/deephaven/deephaven-core) with [prometheus/jmx_exporter](https://github.com/prometheus/jmx_exporter).

## Build

```sh
docker buildx bake --load
```

## Run

```sh
docker run \
    --rm \
    --name deephaven-prometheus \
    -p 10000:10000 \
    -p 12345:12345 \
    deephaven-prometheus
```

[http://localhost:10000](http://localhost:10000)
[http://localhost:12345/metrics](http://localhost:12345/metrics)
