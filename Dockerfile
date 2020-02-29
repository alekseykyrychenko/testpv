FROM centos:7

RUN yum -y install openssh-server openssh-clients
RUN yum -y install vsftpd
RUN yum -y install git
RUN yum clean all
RUN rpm -e yum yum-plugin-fastestmirror yum-utils yum-plugin-ovl
RUN rpm -e rpm rpm-libs rpm-python rpm-build-libs rpm-build-libs rpm-build-libs

ENTRYPOINT ["/bin/bash"]
