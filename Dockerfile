FROM ttbb/base

ENV BFE_HOME /opt/sh/bfe

ARG TARGETARCH

ARG version=1.5.0

RUN wget https://github.com/bfenetworks/bfe/releases/download/v$version/bfe_1.4.0_linux_$TARGETARCH.tar.gz  && \
mkdir -p /opt/sh/bfe && \
tar -xf bfe_1.4.0_linux_$TARGETARCH.tar.gz -C /opt/sh/bfe --strip-components 1 && \
rm -rf bfe_1.4.0_linux_$TARGETARCH.tar.gz

WORKDIR /opt/sh/bfe
