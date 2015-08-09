FROM centos:latest

# replace source list from 163
ADD CentOS-Base.repo /etc/yum.repos.d/

RUN yum updateinfo
RUN yum groupinstall -y 'Development Tools'
RUN yum install -y epel-release
RUN yum updateinfo
RUN yum install -y mingw{32,64}-{gcc,g++}

CMD ["/bin/bash"]
