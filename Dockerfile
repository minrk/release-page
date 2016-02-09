FROM python:3.5
MAINTAINER benjaminrk@gmail.com

EXPOSE 8888

RUN mkdir -p /srv/release-page
WORKDIR /srv/release-page
ADD requirements.txt /srv/release-page/requirements.txt
RUN pip install -r requirements.txt
ADD . /srv/release-page
ADD release-page /srv/release-page/release-page
USER nobody
ENTRYPOINT ["python3", "release-page"]
