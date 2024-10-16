# Python 3.8 이상 이미지를 기반으로 설정
FROM python:3.12-slim

# 작업 디렉토리 설정
WORKDIR /app

# requirements.txt 파일을 복사하고 의존성 설치
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt 

# main.py 파일을 복사
COPY main.py ./

# 컨테이너 실행 시 main.py 파일을 실행
CMD ["streamlit", "run", "main.py"]


