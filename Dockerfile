FROM python:3.11-alpine

ENV PIP_NO_CACHE_DIR=1
ENV PYTHONUNBUFFERED=1

RUN apk add --no-cache \
    git \
    ffmpeg \
    bash

RUN pip install tidal-dl

WORKDIR /app

ENTRYPOINT ["tidal-dl"]