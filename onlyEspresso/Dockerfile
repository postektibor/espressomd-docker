FROM ubuntu:18.04
##GDB server
RUN apt-get update
##Espresso
RUN DEBIAN_FRONTEND=noninteractive apt-get -yq install build-essential cmake cython python-numpy \
libboost-all-dev openmpi-common fftw3-dev libhdf5-dev libhdf5-openmpi-dev \
doxygen python-opengl python-sphinx python-pip libgsl-dev git
RUN DEBIAN_FRONTEND=noninteractive apt-get -yq install nvidia-cuda-toolkit

RUN sed -i 's/__GNUC__ > 6/__GNUC__ > 7/g' /usr/include/crt/host_config.h
RUN sed -i 's/than 6/than 7/g' /usr/include/crt/host_config.h
#Necessary updating next dependencies
RUN pip install --upgrade pip
