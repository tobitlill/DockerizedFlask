# syntax=docker/dockerfile:1
FROM python:3.10-alpine

WORKDIR /code

ENV FLASK_APP=app
ENV FLASK_DEBUG=1
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=12788

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . /code

CMD ["flask", "run"]