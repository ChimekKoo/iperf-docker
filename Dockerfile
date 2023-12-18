FROM alpine:3.18.5

LABEL org.opencontainers.image.source="https://github.com/ChimekKoo/iperf-docker"

COPY . /app
WORKDIR /app

RUN apk add --no-cache iperf3

CMD ["iperf3", "--server", "--json", "--port", "5201"]
