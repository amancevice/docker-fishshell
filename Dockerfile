FROM ubuntu:14.04
MAINTAINER amancevice@cargometrics.com

# To force an update of apt-get instead of a cached version
RUN echo as of 2016-01-01
RUN apt-get update && \
    apt-get install -y \
        software-properties-common \
        python-software-properties \
        lynx && \
    apt-add-repository ppa:fish-shell/release-2 && \
    apt-get update && \
    apt-get install -y fish

ENV BROWSER lynx

ADD config.fish /root/.config/fish/config.fish

ENTRYPOINT [ "/usr/bin/fish" ]
