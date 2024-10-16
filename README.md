### 1. 도커 빌드에서 실행까지 (토큰값 환경변수에 지정 필수)
```./run_image.sh```

### 2. 도커 실행 명령어 (토큰값 환경변수에 지정 필수)
```docker run --name streamlit -p 4000:8501 -e OPENAPI_KEY=$OPENAPI_KEY -d streamlit:latest```

### 3. 브라우저 접속
0.0.0.0:4000 접근하여 openapi에 질의

### 4. KEY 발급 
https://platform.openai.com/api-keys에서 발급 

### 5. 환경변수에 토큰 넣기
```vi ~/.bashrc```<br>
```export OPENAPI_KEY="<OPENAPI_KEY>"```<br>
```source ~/.bashrc```

