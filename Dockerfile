FROM ubuntu:latest

# Install build-essential
# http://d.hatena.ne.jp/mainyaa/20140203/p1
# http://nsaito-nmiri.hateblo.jp/entry/2015/07/07/193123
RUN set -x && \
    apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    build-essential && \
    apt-get clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
