FROM ubuntu:latest

COPY ./feed.py /usr/bin/
COPY ./entrypoint.sh /entrypoint.sh

RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git 

RUN pip install PyYAML


ENTRYPOINT ["/entrypoint.sh"]

