FROM ubuntu:18.04 AS cross-compiler

RUN apt-get update && \
    apt-get -y install --no-install-recommends g++ cmake libconfig++-dev zlib1g && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /root

CMD ["/bin/bash"]
