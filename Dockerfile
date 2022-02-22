FROM centos:7.6.1810

RUN sed -e 's|^mirrorlist=|#mirrorlist=|g' \
    -e 's|^gpgcheck=1|gpgcheck=0|g' \
    -e 's|^#baseurl=http://mirror.centos.org|baseurl=https://mirrors.tuna.tsinghua.edu.cn|g' \
    -i.bak \
    /etc/yum.repos.d/CentOS-*.repo

RUN sed -e 's|^enabled=1|enabled=0|g' /etc/yum/pluginconf.d/fastestmirror.conf
RUN yum -y install gcc automake autoconf libtool make gcc-c++ git binutils elfutils
RUN yum -y groupinstall "Development Tools"



COPY "go1.17.7.linux-amd64.tar.gz" /root
RUN tar -C /usr/local -xzf /root/go1.17.7.linux-amd64.tar.gz
RUN rm /root/go1.17.7.linux-amd64.tar.gz

COPY shells_fish_release_2.repo /etc/yum.repos.d
RUN yum -y install fish
RUN chsh -s /usr/bin/fish

RUN echo "set -x PATH \$PATH /usr/local/go/bin" >> /etc/fish/config.fish