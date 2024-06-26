FROM node:20.13.1-alpine3.19

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npx prisma generate

EXPOSE 3000

CMD [ "npm", "run", "start" ]
