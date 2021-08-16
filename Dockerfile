FROM tbcp/debian:latest

ENV DEBIAN_FRONTEND noninteractive

USER bootcamp

RUN sudo apt update && \
    sudo apt install -y --no-install-recommends apt-utils && \
    sudo apt install -y python3 python3-pip

RUN python3 -m pip install --upgrade --user pip && \
    pip3 install --upgrade --user \
        virtualenv \
        mypy \
        pylint \
        pytest \
        bandit \
        tox \
        flake8 \
        autopep8

# tbcp/python:latest
