#!/bin/sh

echo "📌 엔트리포인트 스크립트 시작"

# ✅ .env.prod 파일 생성
echo "🔧 .env.prod 파일 생성 중..."

# ✅ Django 마이그레이션 및 static 파일 수집
python manage.py makemigrations --no-input
python manage.py migrate --no-input
python manage.py collectstatic --no-input 

# ✅ 명령어 실행
#"$@": 스크립트에 전달된 모든 인자를 배열로 전달합니다. 각 인자는 따옴표로 감싸져 있어서 공백이 포함된 인자도 올바르게 처리됩니다.
#exec: 현재의 쉘 프로세스를 대체하여 새로운 프로세스를 실행
# | 항목     | 설명                                         |
# | ------ | ------------------------------------------ |
# | `"$@"` | 모든 인자를 **배열 형태로, 각각 따옴표로 감싸서** 전달          |
# | `exec` | 현재 셸 프로세스를 대체해서 새로운 명령을 실행                 |
# | 용도     | Docker 엔트리포인트, 정확한 인자 전달, 프로세스 신호 전달 최적화 등 |

exec "$@"
