FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install -y python3
RUN apt install -y python3-pip
RUN pip install codechecker

# CodeChecker server --workspace /ws --port 8555
CMD ["CodeChecker",  "server", "--workspace", "/ws", "--port", "8555", "--not-host-only", "--force-authentication"]
