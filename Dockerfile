FROM nginx:latest

RUN apt-get update && apt-get install -y stress

COPY index.html /usr/share/nginx/html/index.html
COPY start.sh /start.sh

RUN chmod +x /start.sh

CMD ["/start.sh"]