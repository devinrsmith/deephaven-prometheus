group "default" {
    targets = [
        "deephaven-prometheus"
    ]
}

variable "REPO_PREFIX" {
    default = ""
}

variable "IMAGE_NAME" {
    default = "deephaven-prometheus"
}

variable "DEEPHAVEN_VERSION" {
    default = "0.24.2"
}

variable "JMX_PROMETHEUS_VERSION" {
    default = "0.18.0"
}

variable "JMX_PROMETHEUS_PORT" {
    default = "12345"
}

target "deephaven-prometheus" {
    tags = [
        "${REPO_PREFIX}${IMAGE_NAME}:latest"
    ]
    args = {
        DEEPHAVEN_VERSION = DEEPHAVEN_VERSION
        JMX_PROMETHEUS_VERSION = JMX_PROMETHEUS_VERSION
        JMX_PROMETHEUS_PORT = JMX_PROMETHEUS_PORT
    }
}
