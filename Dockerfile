FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install -y python3
RUN apt install -y python3-pip
RUN pip install codechecker

CMD ["CodeChecker",  "server", "--port", "8555", "--not-host-only"]
