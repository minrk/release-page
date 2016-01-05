FROM python:3.5
MAINTAINER benjaminrk@gmail.com

EXPOSE 8888

RUN mkdir -p /srv
ADD . /srv/release-page
WORKDIR /srv/release-page
RUN pip install -r requirements.txt

USER nobody
ENTRYPOINT ["python3", "release-page"]
