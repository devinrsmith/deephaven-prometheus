# syntax=docker/dockerfile:1.4

ARG DEEPHAVEN_VERSION
FROM ghcr.io/deephaven/server:${DEEPHAVEN_VERSION}

ARG JMX_PROMETHEUS_VERSION
ADD --link \
    "https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/${JMX_PROMETHEUS_VERSION}/jmx_prometheus_javaagent-${JMX_PROMETHEUS_VERSION}.jar" \
    /opt/jmx_prometheus_javaagent.jar

COPY --link \
    jmx_prometheus_javaagent.yml \
    /opt/jmx_prometheus_javaagent.yml

ARG JMX_PROMETHEUS_PORT
ENV START_OPTS="-javaagent:/opt/jmx_prometheus_javaagent.jar=${JMX_PROMETHEUS_PORT}:/opt/jmx_prometheus_javaagent.yml"
