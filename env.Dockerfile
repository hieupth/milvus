FROM ubuntu:latest

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install \
        git \
        cmake \
        golang-go \
        clang lldb lld

RUN git clone https://github.com/milvus-io/milvus.git

WORKDIR milvus/

RUN bash ./scripts/install_deps.sh