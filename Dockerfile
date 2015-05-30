FROM fedora:22

# Seperate for more cache
RUN dnf install python-pip fedmsg git -y
RUN dnf install python-sphinx -y

RUN git clone https://github.com/godiard/help-activity /help
ADD . /help/server
RUN pip install -r /help/server/requirements.txt

WORKDIR /help
CMD python server/main.py
