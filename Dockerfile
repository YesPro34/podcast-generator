FROM ubuntu:latest

COPY ./feed.py /usr/bin/
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod 775 /entrypoint.sh

RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git

RUN pip install --break-system-packages PyYAML

ENTRYPOINT ["sh","/entrypoint.sh"]
