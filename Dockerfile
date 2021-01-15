FROM ubuntu
RUN apt-get update
RUN apt-get install -y nginx
RUN rm -f /etc/nginx/sites-enabled/default
COPY Default.txt /etc/nginx/sites-enabled/default
RUN rm -f /var/www/html/index.nginx.debian.html
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
