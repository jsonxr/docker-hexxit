FROM ubuntu:trusty

RUN \
  sudo apt-get update && \
  sudo apt-get install -y default-jdk screen unzip wget

RUN \
  mkdir --parents /opt/hexxit && \
  cd /opt/hexxit && \
  wget --quiet http://mirror.technicpack.net/Technic/servers/hexxit/Hexxit_Server_v1.0.10.zip && \
  unzip Hexxit_Server_v1.0.10.zip && \
  rm Hexxit_Server_v1.0.10.zip && \
  chmod +x launch.sh

WORKDIR /opt/hexxit
EXPOSE 25565

CMD /opt/hexxit/launch.sh
