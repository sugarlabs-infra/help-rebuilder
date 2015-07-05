FROM python:2.7

RUN apt-get update; apt-get install python-sphinx -y

RUN git clone https://github.com/godiard/help-activity /help
ADD . /help/server
RUN pip install -r /help/server/requirements.txt

WORKDIR /help
CMD python server/main.py
