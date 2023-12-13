FROM node:18-alpine as base
WORKDIR /app
COPY package*.json ./
RUN apk update
RUN npm install --only=production
COPY ./dist ./dist
EXPOSE 8080
CMD [ "npm", "run", "start" ]