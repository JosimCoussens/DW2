FROM nginx:latest
RUN date -u > /var/www/html/demo-site/buildtime.txt
