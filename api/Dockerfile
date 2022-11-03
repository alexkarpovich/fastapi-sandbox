FROM python:3.11.0-slim as base

ARG DEBIAN_FRONTEND=noninteractive

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV WORKON_HOME $HOME/.venv
ENV PATH $HOME/.local/bin:$PATH

WORKDIR /prj/src

RUN apt-get update -qq && apt-get install build-essential g++ \
  libssl-dev mariadb-client python3-dev -y

COPY ./api/requirements.txt ./requirements.txt

RUN pip install -r ./requirements.txt


