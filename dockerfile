FROM python:alpine3.15
COPY tools/ /opt/app
COPY requirements.txt /opt/app
WORKDIR /opt/app
RUN apk add git jq
RUN pip install --disable-pip-version-check -r requirements.txt
RUN rm -f requirements.txt
RUN chmod +x ./*
COPY ./* /usr/local/bin/