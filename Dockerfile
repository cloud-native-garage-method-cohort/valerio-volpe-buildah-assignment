FROM quay.io/ibmgaragecloud/node:lts-stretch

COPY . /app

WORKDIR /app
RUN npm install

EXPOSE 3000
CMD [ "npm", "start" ]
