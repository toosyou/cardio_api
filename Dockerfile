FROM tensorflow/tensorflow:2.2.0-gpu

RUN apt update
RUN apt install -y git wget python3 python3.8 python3-pip
RUN pip3 install pipenv
RUN wget -O entry.sh https://raw.githubusercontent.com/toosyou/cardio_api/main/entry.sh
RUN chmod +x entry.sh

CMD ["/entry.sh"]