FROM node:18-alpine

RUN mkdir -p /var/www/dockerize-nuxt/linktree-clone
WORKDIR /var/www/dockerize-nuxt/linktree-clone

COPY package*.json ./
RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000

ENV NUXT_HOST=0.0.0.0

ENV NUXT_PORT=3000

CMD [ "npm", "start" ]