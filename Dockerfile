FROM python:3.9-buster

RUN apt-get update
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9
ENV TERM xterm

RUN python -m pip install --upgrade pip

WORKDIR /usr/local/src/app

COPY ./requirements.txt .
RUN pip install -r requirements.txt

EXPOSE 5000
