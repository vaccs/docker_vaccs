FROM ubuntu:18.04

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
COPY --chown=vaccs loop.bash /home/vaccs
ENV VACCS /home/vaccs/dynamic_analysis
ENV VPIN ${VACCS}/pin
ENV VPAS ${VPIN}/source/tools/PAS
ENV VPINCPP ${VACCS}/vaccs_pin_cpp
ENV VDWARF ${VACCS}/vaccs_dwarf
ENV PATH ${PATH}:${VPIN}/scripts:${VDWARF}/execs/dwread:${VDWARF}/execs/dwwrite
WORKDIR /home/vaccs
RUN git clone https://github.com/vaccs/dynamic_analysis.git
RUN make --directory=${VACCS}
WORKDIR /home/vaccs
CMD /bin/bash loop.bash
