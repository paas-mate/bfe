FROM shoothzj/base

ENV BFE_HOME /opt/bfe

ARG TARGETARCH

RUN wget https://github.com/bfenetworks/bfe/releases/download/v1.6.0/bfe_1.6.0_linux_$TARGETARCH.tar.gz  && \
mkdir -p /opt/bfe && \
tar -xf bfe_1.6.0_linux_$TARGETARCH.tar.gz -C /opt/bfe --strip-components 1 && \
rm -rf bfe_1.6.0_linux_$TARGETARCH.tar.gz

WORKDIR /opt/bfe
