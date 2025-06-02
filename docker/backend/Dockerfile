FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

# 필수 패키지 설치
RUN apt-get update && apt-get install -y \
    gcc \
    default-libmysqlclient-dev \
    pkg-config \
    build-essential \
    libjpeg-dev \
    zlib1g-dev \
    libfreetype6-dev \
    liblcms2-dev \
    libwebp-dev \
    libtiff5-dev \
    tk-dev \
    && rm -rf /var/lib/apt/lists/*

# requirements 복사 및 설치
COPY backend/ .

#dev_5_복사되도록 추가
COPY .env.prod . 

RUN pip install --no-cache-dir -r requirements.txt
RUN pip install gunicorn

# 소스 복사
COPY backend/ ./backend/
COPY backend/manage.py .

#dev_6 
COPY docker/backend/wait-for-it.sh ./wait-for-it.sh
RUN chmod +x ./wait-for-it.sh

# (선택) 엔트리포인트 스크립트 설정 가능
# COPY docker/entrypoint.prod.sh /app/entrypoint.prod.sh
# RUN chmod +x /app/entrypoint.prod.sh