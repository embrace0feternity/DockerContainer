FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y gcc-10 g++-10

RUN apt-get -y install python3-pip && pip3 install conan && conan -v --version

ENV TZ=Europe/Kiev

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get -y install cmake --no-install-recommends && cmake -v --version

RUN apt-get -y install qt5-default

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
