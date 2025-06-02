FROM node:22.14.0 as build

WORKDIR /app/frontend

COPY fronted/package.json ./
RUN npm install

COPY fronted/ .
RUN npm run build

#EXPOSE 3000
#CMD ["npm", "start"]