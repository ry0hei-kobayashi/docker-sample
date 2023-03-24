#-----------------------------
# base image include 
    #Ubnutu20.04
    #Cuda11.5
    #Cudnn8
#-----------------------------
FROM nvidia/cuda:11.5.2-cudnn8-devel-ubuntu20.04

#-----------------------------
# Environment Variables
#-----------------------------
ENV LC_ALL=C.UTF-8
ENV export LANG=C.UTF-8
ENV SHELL /bin/bash
# no need input key
ENV DEBCONF_NOWARNINGS=yes
ENV DEBIAN_FRONTEND noninteractive
# for display
ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES compute,utility

#-----------------------------
# install apt package
#-----------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    git \
    vim\
    curl \
    screen \
    g++ \
    wget \
    net-tools \
    software-properties-common 


#######################################################################
#                       install display settings                         
#######################################################################
RUN apt-get install -y --no-install-recommends \
    libxau-dev \
    libxdmcp-dev \
    libxcb1-dev \
    libxext-dev \
    libx11-dev \
    mesa-utils \
    x11-apps \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

