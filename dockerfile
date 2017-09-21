FROM ubuntu:16.10
MAINTAINER Tim Koepsel <xzesstence@gmail.com>

RUN apt-get update && apt-get install software-properties-common -q -y && add-apt-repository ppa:certbot/certbot
RUN apt-get update && apt-get install certbot -q -y
ENTRYPOINT ["certbot"]
