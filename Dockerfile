FROM ubuntu:xenial
RUN apt-get update
RUN apt-get install -y python3 python3-pip

ADD requirements.txt /opt/pac/requirements.txt
RUN pip3 install -r /opt/pac/requirements.txt

ADD settings.docker.conf /etc/pac.conf
ADD . /opt/pac/
ADD pac.py /opt/pac/pac.py

CMD /usr/bin/python3 /opt/pac/pac.py
