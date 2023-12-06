FROM ubuntu

RUN apt-get update && apt-get install -y \
    python3.11 \
    curl \
    