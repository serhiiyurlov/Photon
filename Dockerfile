FROM python:2-alpine

RUN mkdir /photon
WORKDIR /photon

COPY requirements.txt /photon
COPY photon.py /photon
COPY core /photon/core
COPY plugins /photon/plugins

RUN pip install -r ./requirements.txt
