FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y sudo && apt-get clean

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata && apt-get clean
RUN apt-get install -y software-properties-common unzip wget gcc git vim libcurl4-nss-dev tmux && apt-get clean
RUN apt-get install -y openjdk-8-jdk && apt-get clean
RUN apt-get install -y maven gradle && apt-get clean
RUN apt-get install -y openjdk-11-jdk && apt-get clean
RUN apt-get install -y python3-pip python3-virtualenv && apt-get clean
RUN apt-get install -y nodejs npm && apt-get clean

COPY ./small_setup.sh .
COPY ./services ./services
COPY ./RESTest ./RESTest
COPY ./bBOXRT ./bBOXRT
COPY ./RestTestGen ./RestTestGen
RUN bash -e -x small_setup.sh

RUN wget https://mayhem4api.forallsecure.com/downloads/cli/latest/linux-musl/mapi && chmod +x mapi
RUN ./mapi login dRahTYamr2wkW1gobbtcvlbT8dgtB4hI4

COPY ./java8.env .
COPY ./java11.env .
COPY ./run_service.py .
COPY ./small_cov.sh .
COPY ./run_small.py .
COPY ./doc ./doc
COPY ./report.py .
COPY *.jar .
COPY ./run_one.sh .
