FROM python:3.6-slim

LABEL maintainer="mike.kinney@gmail.com"

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . /app

CMD gunicorn -b 0.0.0.0:8000 app:API
