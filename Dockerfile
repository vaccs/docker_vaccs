FROM ubuntu:22.04

RUN apt-get update
RUN apt-get -y install curl
RUN apt-get -y install gcc
RUN apt-get -y install g++
RUN apt-get -y install make
RUN apt-get -y install vim
RUN apt-get -y install git
RUN apt-get -y install python3
RUN useradd -ms /bin/bash vaccs
USER vaccs
ENV VACCS /home/vaccs/dynamic_analysis
ENV VPIN ${VACCS}/pin
ENV VPAS ${VPIN}/source/tools/PAS
ENV PATH ${PATH}:${VPIN}/scripts:${VACCS}/vaccs_comm
WORKDIR /home/vaccs
RUN git clone https://github.com/vaccs/dynamic_analysis.git
RUN make --directory=${VACCS}
CMD vc
