FROM python:3.13.4-slim

RUN apt-get update && apt-get install -y git

WORKDIR /usr/src
RUN git clone https://satishsuryanarayan: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@github.com/satishsuryanarayan/banking-async.git

WORKDIR /usr/src/banking-async
RUN pip install -U pip
RUN pip install go-task-bin
RUN task requirements

EXPOSE 8000

CMD task run