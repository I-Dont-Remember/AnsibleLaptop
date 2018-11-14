# FROM ubuntu:18.04


# RUN apt-get update && apt-get -y upgrade && apt-get install -y sudo git vim

# # Setup sudo user here to mock as if we just setup a new laptop
# RUN useradd --groups sudo -ms /bin/bash kevin && echo kevin:12345 | chpasswd
# # passwordless so we don't have to do any monkeying around in the container even though it's 
# # unsafe
# RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# USER kevin

# RUN cd ~ && git clone https://github.com/I-Dont-Remember/AnsibleLaptop.git ansible

# RUN cd /home/kevin/ansible && sudo bash install.sh

# USER kevin

# WORKDIR /home/kevin/ansible

# Trying it without sudo user in hopes of less weird ansible errors
FROM ubuntu:18.04

RUN apt-get update && apt-get -y upgrade && apt-get install -y git vim

# Screw the sudo user garbage, just run as root for now as test should be almost the same
RUN cd /root && git clone https://github.com/I-Dont-Remember/AnsibleLaptop.git ansible \
    && cd ansible && bash install.sh
