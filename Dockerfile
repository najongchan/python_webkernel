#base imgae
FROM ubuntu

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y python python-dev python-pip python-virtualenv
RUN apt-get install -y python3 python3-dev python3-pip python3-virtualenv

#update pip
RUN python3 -m pip install pip --upgrade
RUN python -m pip install pip --upgrade

#intall jupyter
RUN pip install jupyter[notebook]
RUN jupyter notebook --ip='*' --allow-root

