FROM python:3.12-slim

WORKDIR /app/backend

# 필수 빌드 도구 설치 (mysqlclient 설치용, pillow 빌드)
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

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

RUN pip install gunicorn

COPY . .

# 엔트리포인트 스크립트 복사 및 실행 권한 부여 
COPY ./config/docker/entrypoint.prod.sh /app/entrypoint.prod.sh
RUN chmod +x /app/entrypoint.prod.sh

# # 엔트리포인트 설정
ENTRYPOINT ["/app/entrypoint.prod.sh"]


