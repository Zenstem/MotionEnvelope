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