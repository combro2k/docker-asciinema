FROM combro2k/ubuntu-debootstrap:14.04

MAINTAINER Martijn van Maurik <docker@vmaurik.nl>

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update -yq && \
    apt-get install -yq software-properties-common python-software-properties && \
    apt-add-repository ppa:zanchey/asciinema && \
    apt-get update -yq && \
    apt-get install -yq asciinema && \
    apt-get install -qy python-virtualenv

CMD ['/bin/bash']
