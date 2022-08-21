FROM node:alpine
WORKDIR /app
EXPOSE 8081

COPY package.json parkings.json ./

RUN npm install

COPY . ./

CMD ["node", "index.js"]