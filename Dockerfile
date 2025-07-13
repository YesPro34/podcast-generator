FROM ubuntu:latest

COPY ./feed.py /usr/bin/
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git \
    dos2unix

RUN dos2unix /entrypoint.sh  # Normalize line endings
RUN pip install --break-system-packages PyYAML

ENTRYPOINT ["/entrypoint.sh"]
