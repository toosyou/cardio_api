FROM tensorflow/tensorflow:2.2.0-gpu

RUN mkdir /entries

COPY projects /
COPY entries /entries
COPY entry.sh /

RUN apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/3bf863cc.pub
RUN apt update
RUN apt install -y git wget python3 python3.8 python3-pip
RUN pip3 install pipenv
RUN ./entries/pipenv_sync.sh

RUN chmod +x entry.sh
CMD ["/entry.sh"]
