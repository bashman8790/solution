FROM golang:1.13.10

ENV DOCKERVERSION=19.03.8
RUN apt-get update && apt-get install curl  protobuf-compiler -y && rm -rf /var/lib/apt/lists/*
RUN curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKERVERSION}.tgz \
  && tar xzvf docker-${DOCKERVERSION}.tgz --strip 1 \
                 -C /usr/local/bin docker/docker \
  && rm docker-${DOCKERVERSION}.tgz
