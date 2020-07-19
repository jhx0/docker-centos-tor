FROM centos:latest

MAINTAINER jhx <jhx0x00@gmail.com>

ADD run_tor /usr/bin

RUN yum update -q -y && \
    yum -q -y install epel-release && \
    yum -q -y install tor sudo && \
    chown root:root /usr/bin/run_tor && \
    chmod 755 /usr/bin/run_tor

ADD torrc /etc/tor/torrc
RUN chmod 755 /etc/tor/torrc

EXPOSE 9050

ENTRYPOINT ["/usr/bin/run_tor"]
