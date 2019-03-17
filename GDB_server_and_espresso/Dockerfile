FROM ubuntu:16.04
##GDB server
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
RUN DEBIAN_FRONTEND=noninteractive apt-get -yq install build-essential cmake cython python-numpy \
libboost-all-dev openmpi-common fftw3-dev libhdf5-dev libhdf5-openmpi-dev \
doxygen python-opengl python-sphinx python-pip libgsl-dev
RUN DEBIAN_FRONTEND=noninteractive apt-get -yq install nvidia-cuda-toolkit
#Necessary updating next dependencies
RUN pip install --upgrade pip
RUN pip install sphinx>=1.6.6 sphinxcontrib-bibtex>=0.3.5 MDAnalysis>=0.16 --user --upgrade