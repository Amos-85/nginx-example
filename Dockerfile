FROM nginx:alpine

COPY app/index.html /usr/share/nginx/html/index.html
COPY app/templates /etc/nginx/templates
COPY app/nginx.conf /etc/nginx/nginx.conf

RUN  chown -R nginx:nginx /usr/share/nginx/html docker-entrypoint.d /etc/nginx

USER nginx
EXPOSE 8080

WORKDIR /usr/share/nginx/html
