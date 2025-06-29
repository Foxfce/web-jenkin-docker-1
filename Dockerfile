# Docker file

FROM nginx:alpine
COPY index.html index.html /usr/share/nginx/html/index.html

