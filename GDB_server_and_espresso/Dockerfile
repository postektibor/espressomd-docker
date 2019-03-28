FROM nvidia/cuda:9.0-devel-ubuntu16.04
##GDB server
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
apt-get install -y rsync openssh-server cmake gcc \
build-essential vim python tcpdump telnet byacc \
flex iproute2 gdbserver less bison valgrind firefox
RUN mkdir /var/run/sshd
RUN echo 'root:root' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile
EXPOSE 22 9999 7777
CMD ["/usr/sbin/sshd", "-D"]

##Espresso
RUN apt-get update && apt-get install -y \
    apt-utils \
    cmake \
    build-essential \
    curl \
    pkg-config \
    openmpi-bin libopenmpi-dev \
    lcov \
    libfftw3-dev \
    libboost-dev libboost-serialization-dev libboost-mpi-dev libboost-filesystem-dev libboost-test-dev \
    libgsl-dev \
    cython3 python3 python3-numpy python3-h5py \
    lcov \
    curl \
    git \
    pep8 pylint3 \
#   python3-vtk7 \ # not available in 16.04
    python3-sphinx python3-numpydoc python3-pip \
    libpython-dev \
    libhdf5-openmpi-dev \
    libhdf5-openmpi-10:amd64 \
    libhdf5-10:amd64 \
    doxygen \
    vim \
    ccache \
#&& pip3 install --upgrade sphinx sphinxcontrib-bibtex \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

### end of modified Dockerfile-9.0

# install Python3 packages required for testing tutorials and samples
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    python3-dev python3-pip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && python3 -m pip install --upgrade pip \
    && pip3 install --upgrade setuptools \
    && pip3 install --upgrade six numpy scipy matplotlib ipython nbconvert sphinx sphinxcontrib-bibtex numpydoc
