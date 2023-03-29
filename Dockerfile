FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

# Install package dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        cmake \
        unzip \
        libncurses-dev \
        libsndfile-dev \
        libasound2-dev \
        sudo

 apt-get install -y \
        alsa-base \
        alsa-utils \
        alsaplayer-text \
        gst123 \
        mpc123 \
        mpg123 \
        libsndfile1-dev 

RUN apt-get clean
