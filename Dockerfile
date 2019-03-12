FROM ubuntu:18.04
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -yq install build-essential cmake cython python-numpy \
libboost-all-dev openmpi-common fftw3-dev libhdf5-dev libhdf5-openmpi-dev \
doxygen python-opengl python-sphinx python-pip libgsl-dev

RUN DEBIAN_FRONTEND=noninteractive apt-get -yq install nvidia-cuda-toolkit
RUN sudo sed -i 's/__GNUC__ > 6/__GNUC__ > 7/g' /usr/include/crt/host_config.h
RUN sudo sed -i 's/than 6/than 7/g' /usr/include/crt/host_config.h