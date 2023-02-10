FROM alpine AS downloader

WORKDIR /tmp

ENV PACKER_VERSION 1.6.6
ENV PACKER_PROVISIONER_SERVERSPEC_VERSION 0.2.1

RUN wget https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip && \
    unzip packer_${PACKER_VERSION}_linux_amd64.zip

RUN wget https://github.com/unifio/packer-provisioner-serverspec/releases/download/v${PACKER_PROVISIONER_SERVERSPEC_VERSION}/packer-provisioner-serverspec_${PACKER_PROVISIONER_SERVERSPEC_VERSION}_linux_amd64.tar.gz && \
    tar -zxf packer-provisioner-serverspec_${PACKER_PROVISIONER_SERVERSPEC_VERSION}_linux_amd64.tar.gz

FROM ruby:3.2

RUN mkdir -p /root/.packer.d/plugins && \
    gem install --no-doc serverspec

COPY --from=downloader /tmp/packer /usr/local/bin
COPY --from=downloader /tmp/packer-provisioner-serverspec /root/.packer.d/plugins
