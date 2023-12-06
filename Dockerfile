FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive
ENV version=1.0
ARG TEXT_EDITOR=nano

RUN apt-get update && apt-get install -y \
    python3.11 \
    curl \
    ${TEXT_EDITOR} \
    nginx
COPY /app /app

WORKDIR /app
CMD ["nginx","-g","daemon off;"]