FROM node

WORKDIR /usr/app

COPY package.json ./

RUN npm install -g npm@8.10.0 && npm install

COPY . .

EXPOSE 3333

CMD ["npm", "run", "dev"]