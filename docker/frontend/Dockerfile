FROM node:22.14.0 as build

WORKDIR /app/frontend

COPY frontend/package.json frontend/package-lock.json* ./
RUN npm install

COPY frontend/ .
RUN npm run build

FROM nginx:alpine

COPY --from=build /app/frontend /usr/share/nginx/html
COPY docker/nginx/default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"] 

# 컨테이너는 빌드 후 바로 종료 (build-only container)
#EXPOSE 3000
#CMD ["npm", "start"]