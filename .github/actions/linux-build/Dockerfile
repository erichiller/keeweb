FROM ubuntu:20.04

COPY entrypoint.sh /entrypoint.sh

ENV TZ="Europe/Helsinki"

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata
RUN apt-get install -y build-essential git-core unzip curl pkg-config rpm
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g grunt-cli
RUN git config --global --add safe.directory /github/workspace

WORKDIR /github/workspace

ENTRYPOINT ["/entrypoint.sh"]
