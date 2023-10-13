FROM node:latest

WORKDIR /usr/src/app

COPY . .

RUN yarn install

RUN npx prisma generate

RUN yarn build

EXPOSE 3000

CMD [ "yarn", "start:prod" ]
