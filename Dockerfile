FROM python:3.8-alpine

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# set work directory
RUN mkdir -p /user/src/app/
WORKDIR /user/src/app/

COPY . /user/src/app/

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt