# Pull base image
FROM python:3.6-slim

# install dependencies
RUN apt-get update && \
    apt-get -y install build-essential libglib2.0-0 libsm6 libxext6 libxrender-dev make libpq-dev gcc && \
    rm -rf /var/lib/apt/lists/*

RUN pip install pipenv