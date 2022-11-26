FROM ubuntu:20.04
RUN apt-get update && apt-get -y install build-essential && mkdir –p /app
RUN apt-get -qq install curl --yes
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get -qq install nodejs --yes
RUN npm install
COPY . /app/
WORKDIR /app/
CMD ["node", "app.js"]
