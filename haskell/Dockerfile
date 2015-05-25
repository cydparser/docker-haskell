FROM haskell:7.10

RUN apt-get update -qq && \
    apt-get install -qq -y --no-install-recommends curl llvm && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY root /
