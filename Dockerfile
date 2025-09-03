# nginx 이미지 사용
FROM nginx

# host pc의 nginx.conf를 아래 경로에 복사
COPY ./config/nginx.conf /etc/nginx/conf.d/nginx.conf

# host pc의 html 폴더를 nginx의 http root 폴더로 복사
COPY ./html/ /usr/share/nginx/html/

# 80 포트 개방
EXPOSE 80

# container 실행 시 자동으로 실행할 command. nginx 시작함
ENTRYPOINT ["nginx", "-g", "daemon off;"]

# 도커 빌드
# docker build -t zenstemlss/motionenvelope .

# 도커 이미지 실행
# docker run -d -p 8000:80 zenstemlss/motionenvelope

# 도커 허브 로그인
# docker login

# 도커 허브 푸쉬
# docker push zenstemlss/motionenvelope