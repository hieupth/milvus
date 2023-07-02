FROM ubuntu:latest

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install \
        git wget python3-pip sudo cmake golang-go clang lldb lld

RUN git clone https://github.com/milvus-io/milvus.git

WORKDIR milvus/

SHELL ["/bin/bash", "-c"]
RUN bash ./scripts/install_deps.sh
RUN make