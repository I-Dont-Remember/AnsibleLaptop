FROM ubuntu:18.04

# TODO: Setup sudo user here to mock as if we just setup a new laptop

RUN apt-get update && apt-get -y upgrade && apt-get install -y git vim

RUN cd ~ && git clone https://github.com/I-Dont-Remember/AnsibleLaptop.git ansible && cd ./ansible && bash install.sh

WORKDIR ~/ansible
