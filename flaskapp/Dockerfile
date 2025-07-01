FROM python:3.13.4-slim

RUN apt-get update && apt-get install -y git && apt-get install -y --no-install-recommends gcc && apt-get install -y python3-dev

WORKDIR /usr/src
RUN git clone https://satishsuryanarayan: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@github.com/satishsuryanarayan/banking-websocket.git
WORKDIR /usr/src/banking-websocket
RUN pip install -U pip
RUN pip install go-task-bin
RUN task requirements

RUN apt-get remove -y gcc && apt-get remove -y python3-dev && apt-get -y autoremove

EXPOSE 8000

CMD task run