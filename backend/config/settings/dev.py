# config/settings/dev.py
#개발 전용 설정만 덮어쓴다"는 의미
from .base import *  

DEBUG = True

#ALLOWED_HOSTS = ["example.com", "myapi.com"] 
#도메인에서 오는 요청만 Django가 처리
ALLOWED_HOSTS = ["*"]

CORS_ORIGIN_ALLOW_ALL = True  # 어떠한 출처든 상관없이 정보를 공유

# 다른 도메인에서의 API 접근 허용
# 정확한 주소 필요, 포트 포함
# CORS_ORIGIN_ALLOW_ALL = True 이면 아래는 필요 없음
CORS_ALLOWED_ORIGINS = [
    "http://localhost:3000",
    "http://127.0.0.1:3000",
    "http://localhost:5173",  # 프론트 도메인
]