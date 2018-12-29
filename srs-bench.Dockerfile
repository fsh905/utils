from ubuntu:12.04 AS build

RUN apt-get update && apt-get -y install build-essential unzip git
WORKDIR /tmp
RUN git clone https://github.com/ossrs/srs-bench.git && cd srs-bench \
    && ./configure && make \
    && cp -r objs/sb_* /root

FROM debian:jessie-slim AS dist

COPY --from=build /root/sb_* /root
WORKDIR /root
