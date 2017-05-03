FROM ubuntu:latest

# Install build-essential
# http://d.hatena.ne.jp/mainyaa/20140203/p1
RUN set -x && \
    apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
    build-essential && \
    apt-get clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
