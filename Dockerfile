FROM tbcp/debian:latest

ENV DEBIAN_FRONTEND noninteractive

USER bootcamp

RUN apt update && \
    apt install -y --no-install-recommends apt-utils && \
    apt python3 python3-pip

RUN python3 -m pip install --upgrade --user pip && \
    python3 -m pip install --upgrade --user mypy pylint pytest bandit

# tbcp/python:latest
