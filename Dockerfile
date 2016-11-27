# Pull base image.
FROM ubuntu:16.04
MAINTAINER mjsrs

RUN echo "\n## guh repo\ndeb http://repo.guh.guru xenial main\ndeb-src http://repo.guh.guru xenial main" > /etc/apt/sources.list.d/guh.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key A1A19ED6
RUN apt-get update
RUN apt-get install -y guh guh-cli guh-webinterface

# Expose websocket server and http server
EXPOSE 4444 3333

CMD guhd -n
