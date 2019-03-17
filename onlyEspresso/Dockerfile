FROM ubuntu:16.04
##GDB server
RUN apt-get update
##Espresso
RUN DEBIAN_FRONTEND=noninteractive apt-get -yq install build-essential cmake cython python-numpy \
libboost-all-dev openmpi-common fftw3-dev libhdf5-dev libhdf5-openmpi-dev \
doxygen python-opengl python-sphinx python-pip libgsl-dev
RUN DEBIAN_FRONTEND=noninteractive apt-get -yq install nvidia-cuda-toolkit
#Necessary updating next dependencies
RUN pip install --upgrade pip