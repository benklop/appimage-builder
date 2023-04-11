FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get -yq install \
        breeze-icon-theme \
        desktop-file-utils \
        elfutils \
        fakeroot \
        file \
        git \
        gnupg2 \
        gtk-update-icon-cache \
        libgdk-pixbuf2.0-dev \
        libglib2.0-bin \
        librsvg2-dev \
        libyaml-dev \
        python3.11 \
        python3-pip \
        python3-setuptools \
        strace \
        wget \
        zsync && \
    apt-get -yq autoclean

ADD . /opt/appimage-builder
RUN python3.11 -m pip install /opt/appimage-builder
RUN rm -rf /opt/appimage-builder

WORKDIR /
