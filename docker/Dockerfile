# https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04
# https://www.digitalocean.com/community/tutorials/how-to-dockerise-and-deploy-multiple-wordpress-applications-on-ubuntu
# https://www.digitalocean.com/community/tutorials/how-to-set-up-laravel-nginx-and-mysql-with-docker-compose-on-ubuntu-20-04

# docker build -t mi .

FROM ubuntu:18.04
LABEL vendorl = "peter"
# RUN
# WORKDIR /home
#RUN apt update
#RUN apt install -Y build-essential make python3.6 python3-pip
# RUN apt update && apt install -y build-essential make python3.6 python3-pip

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    make \
    python3.6 \
    python3-pip \
    git

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

RUN groupadd -g 1000 god
RUN useradd -u 1000 -ms /bin/bash -g god god

#RUN mkdir -m 777 /data
#VOLUME /data
#RUN chmod 777 /data

#USER god
#WORKDIR /home/god/

RUN pip3 install --user --upgrade pip
RUN pip3 install --user numpy scipy matplotlib ipython jupyter pandas sympy nose scikit-image tensorflow==1.8

# VOLUME opends_data:/data
WORKDIR /data
ENV PATH="/data:${PATH}"

# For Python/GA3C-DeepNavigationWithNavigation/Environment.py:47
ENV my_system=docker

#RUN git clone https://github.com/9f9f/cts.git .


# COPY --chown=god:god /home/god/my/dkr/ISDESPOT /home/god/ISDESPOT
# COPY --chown=god:god /home/god/my/dkr/Python /home/god/Python
# COPY --chown=god:god ISDESPOT /home/god/ISDESPOT
# COPY --chown=god:god Python /home/god/Python
# mkdir /root/app
# WORKDIR /root/app
# COPY /media/user/8219182d-76c9-4b6f-beab-158f5fa055ab/1/opends-05/OpenDS5.0/ISDESPOT /root/ISDESPOT
# COPY /media/user/8219182d-76c9-4b6f-beab-158f5fa055ab/1/opends-05/OpenDS5.0/Python /root/Python
# COPY /home/god/my/dkr/ISDESPOT /root/ISDESPOT
# VOLUME 
# EXPOSE 4000
# CMD 
# docker run -p 127.0.0.1::4000 this-container
# compile- IS-DESPOT-p.sh
# cd ~/ISDESPOT/isdespot-car-sim-master/is-despot && make
# cd ~/ISDESPOT/isdespot-car-sim-master/is-despot/problems/isdespotp_car && make
# run
# 
