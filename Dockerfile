#-----------------------------
# base image include 
    #Ubnutu20.04
    #Cuda11.5
    #Cudnn8
#-----------------------------
FROM nvidia/cuda:11.5.2-cudnn8-devel-ubuntu20.04

ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES compute,utility


#-----------------------------
# setiing environment 
#-----------------------------
ENV LC_ALL=C.UTF-8
ENV export LANG=C.UTF-8
ENV SHELL /bin/bash
ENV DEBCONF_NOWARNINGS=yes
ENV DEBIAN_FRONTEND noninteractive



#-----------------------------
# install apt package
#-----------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    python3-dev \
    python3-pip \
    python-is-python3 \
    git \
    vim \
    curl \
    screen \
    g++ \
    wget \
    net-tools 

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
    x11-apps



