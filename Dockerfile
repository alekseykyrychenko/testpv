FROM centos:7

RUN mkdir /var/testpv
VOLUME /var/testpv

ENTRYPOINT ["/bin/bash"]
