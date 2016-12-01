FROM node:latest

RUN mkdir /app

ADD package.json /app/package.json
RUN cd /app && npm install

ADD . /app
WORKDIR /app

ENV NODE_ENV production
EXPOSE 1337
ENV PORT 1337
CMD ["npm", "start"]