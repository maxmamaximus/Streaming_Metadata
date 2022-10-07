
## OS debine:bookworm + setting date and lang
FROM debian:bookworm
ENV DEBIAN_FRONTEND=noninteractive
SHELL ["/bin/bash", "-c"]
ENV TZ=Asia/Bangkok
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ARG VERSION
ENV VERSION=$VERSION
ARG DATE
ENV DATE=$DATE
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
## Install c environment and gst package
RUN chmod 1777 /tmp \
    && mkdir /scratch \
    && chmod 1777 /scratch \
    && apt-get update -y \
    && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    meson \
    make \
    cmake \
    ninja-build \
    pkg-config \
    python3-dev \
    python3-pip \
    python3-gi \
    python3-gi-cairo \
    libcairo2-dev \
    libgstreamer1.0-dev \
    libgstreamer-plugins-base1.0-dev \
    libgstreamer-plugins-bad1.0-dev \
    gir1.2-gtk-3.0 \
    gstreamer1.0-tools \
    gstreamer1.0-plugins-base \
    gstreamer1.0-plugins-good \
    gstreamer1.0-plugins-bad \
    gstreamer1.0-plugins-ugly \
    gstreamer1.0-plugins-base \
    gstreamer1.0-plugins-good \
    gstreamer1.0-plugins-bad \
    gstreamer1.0-plugins-ugly \
    gstreamer1.0-gtk3 \
    gstreamer1.0-qt5 \
    gstreamer1.0-pulseaudio \
    gstreamer1.0-tools
# Install jupyter
RUN pip3 install jupyter 
RUN pip install --upgrade wheel pip setuptools

