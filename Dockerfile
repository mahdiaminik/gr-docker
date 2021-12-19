FROM ubuntu:18.04
ENV DEBIAN_FRONTEND=noninteractive
RUN ln -fs /usr/share/zoneinfo/Asia/Tehran /etc/localtime
RUN apt-get update && \
apt-get install -y \
python3-pip \
libboost-all-dev \
libfftw3-3 \
libfftw3-dev \
swig3.0 \
libgsl-dev \
libgmp-dev \
libasound2-dev \
qtbase5-dev \
libqt5opengl5-dev \
libqt5svg5-dev \
libqwt-qt5-dev \
python3-lxml \
python3-numpy \
python3-pyqt5 \
python3-cairo-dev \
liblog4cpp5-dev \
libzmq3-dev \
python3-zmq \
python3-click-plugins \
tzdata \
python3-pyqtgraph \
python3-yaml \
python3-gi-cairo \
gobject-introspection \
gir1.2-gtk-3.0 \
doxygen \
cmake \
libusb-1.0-0-dev
#git
RUN pip3 install pybombs && \
pybombs auto-config && \
pybombs recipes add-defaults

RUN pybombs prefix init ~/prefix-3.8 -R gnuradio-default

