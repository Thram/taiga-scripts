FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y git
# RUN useradd -ms /bin/bash taiga
# USER taiga
# WORKDIR /home/taiga
RUN git clone https://github.com/Thram/taiga-scripts.git
WORKDIR /taiga-scripts
# WORKDIR /home/taiga/taiga-scripts
RUN ./setup-server.sh