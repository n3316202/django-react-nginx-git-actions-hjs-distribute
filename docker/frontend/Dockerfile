FROM node:22.14.0 as build

WORKDIR /app/frontend

COPY frontend/package.json frontend/package-lock.json* ./
RUN npm install

COPY frontend/ .
RUN npm run build

# 컨테이너는 빌드 후 바로 종료 (build-only container)
CMD ["echo", "Frontend build completed."]

#EXPOSE 3000
#CMD ["npm", "start"]