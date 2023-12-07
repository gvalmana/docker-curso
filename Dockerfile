FROM node

COPY /app /app

WORKDIR /app

RUN npm install

RUN chmod +x entrypoint.sh

ENTRYPOINT ./entrypoint.sh