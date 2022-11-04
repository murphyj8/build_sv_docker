FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive


ENV OPENSSL_VERSION "1.1.1l"

RUN apt-get update \
    && apt-get install -y git \
    perl \
    binutils \
    gcc \
    g++  \
    curl \
    make \
    wget \
    cmake \
    build-essential checkinstall zlib1g-dev \
    dirmngr \
    libtool \
    libzmq3-dev \
    python3.9 \
    python3-pip \
    coreutils \
    doxygen \
    libgmp3-dev \
    vim \
    rpm \
    npm \
    software-properties-common \
    keyutils
    
RUN apt-get install ca-certificates 

WORKDIR /
RUN wget --no-check-certificate https://www.openssl.org/source/openssl-${OPENSSL_VERSION}.tar.gz;  \
    mkdir -p /opt/openssl && tar xvf "openssl-${OPENSSL_VERSION}.tar.gz" --directory=/opt/openssl
    
WORKDIR /opt/openssl/openssl-${OPENSSL_VERSION}
RUN  export LIBS=-ldl && ./config --prefix=/opt/openssl --openssldir=/opt/openssl -Wl,-rpath=\\\$\$ORIGIN/../lib \
                       && make -j$(nproc --all)


WORKDIR / 

RUN apt-get install -y libboost-all-dev \
    pkg-config \
    libdb++-dev

                       
WORKDIR /
SHELL ["/bin/bash", "-c"]

