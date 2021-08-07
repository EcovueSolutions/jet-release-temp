FROM node:alpine
RUN mkdir -p /usr/src/ui

COPY . /usr/src/ui

WORKDIR /usr/src/ui

RUN npm -g install @oracle/ojet-cli
RUN npm install

RUN ojet build --release

EXPOSE 8080

CMD ["ojet","serve","--server-port=8080"]